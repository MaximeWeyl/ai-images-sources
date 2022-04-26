ARG FROM
ARG workspace_FROM=ubuntu
ARG base_FROM=nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04

# ----- Step workspace
# ----- Step conda
FROM $workspace_FROM as workspace_conda
ARG workspace_conda_MINICONDA=https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh
ARG workspace_conda_MINICONDA_PATH=/workspace/.miniconda3
SHELL ["/bin/bash", "-l", "-c"]
ENV WORKSPACE_DIR=/workspace

USER root
RUN echo "Installing some basic dependencies" && \
    apt-get update && apt-get install -y wget && apt-get clean && rm -rf /var/lib/apt/lists/* && \
    echo "Setting the right user for AI Tools" && \
    mkdir $WORKSPACE_DIR && \
    chown 42420:42420 $WORKSPACE_DIR && \
    addgroup --gid 42420 ovh && \
    useradd --uid 42420 -g ovh --shell /bin/bash -d $WORKSPACE_DIR ovh && \
    echo "Configuring bash sessions" && \
    echo "if [ -f ~/.bashrc ]; then . ~/.bashrc ; fi" > $WORKSPACE_DIR/.bash_profile && \
    chown 42420:42420 $WORKSPACE_DIR/.bash_profile

USER ovh
RUN echo "Installing miniconda" && \
    mkdir -p $(dirname $workspace_conda_MINICONDA_PATH) && wget -q $workspace_conda_MINICONDA -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p $workspace_conda_MINICONDA_PATH && rm /tmp/miniconda.sh && \
    echo "We configure bash for using our miniconda environment" && \
    bash -c "$workspace_conda_MINICONDA_PATH/bin/conda init bash" && \
    echo "We update pip to the latest version" && \
    $workspace_conda_MINICONDA_PATH/bin/pip3 install -U --user pip && \
    rm -rf $WORKSPACE_DIR/.cache && \
    echo "We set the environment variables we need to pass to the final image through .bashrc" && \
    echo "export OVH_ENV_NAME=Conda" >> $WORKSPACE_DIR/.bashrc

# ----- Step framework
# ----- Option tensorflow of framework
FROM workspace_conda as workspace

ARG workspace_framework_tensorflow_version=2.7
RUN sed -iE "s/export OVH_ENV_NAME=.*/export OVH_ENV_NAME=\"Tensorflow $workspace_framework_tensorflow_version\"/gm" /$WORKSPACE_DIR/.bashrc && \
    pip install --no-input tensorflow==$workspace_framework_tensorflow_version && \
    rm -rf $HOME/.cache


# ----- Step base
# ----- Step ovh
# This block adds what's needed to make the image compatibe with AI Training
FROM $base_FROM as base_ovh


# This allows the bash config to be available in the rest of the building process
# It allows RUN instructions to behave like it would if run by the user in bash
SHELL ["/bin/bash", "-l", "-c"]

ENV LANG=C.UTF-8
ENV SHELL=/bin/bash

ENV WORKSPACE_DIR=/workspace
ENV REAL_WORKSPACE_DIR=/.workspace

USER root
COPY assets/exit_job assets/job_closer.sh assets/install_tools.sh /usr/bin/

# AI Training requirements
# User 42420 is the user that AI Training and AI Notebooks use to run the image
# Adding the user is not mandatory as both products will overwrite /etc/passwd so the user will exist anyway
# but you may experience file permisson problems if you don't
# Adding user allows for having a home directory (or 'workspace') that has the correct permissions
# It also allows to use this user in the following Dockerfile commands
# For running build commands with ovh user, first use the "USER ovh" command
# For running build commands with root, first use the "USER root" command
RUN bash /usr/bin/install_tools.sh && rm /usr/bin/install_tools.sh && \
    mkdir $REAL_WORKSPACE_DIR && \
    chown 42420:42420 $REAL_WORKSPACE_DIR && \
    ln -s $REAL_WORKSPACE_DIR $WORKSPACE_DIR && \
    chown 42420:42420 $WORKSPACE_DIR && \
    addgroup --gid 42420 ovh && \
    useradd --uid 42420 -g ovh --shell /bin/bash -d $WORKSPACE_DIR ovh && \
    chmod a+rx /usr/bin/job_closer.sh /usr/bin/exit_job

USER ovh
WORKDIR /workspace

# ----- Step editor
# ----- Option vscode of editor
FROM base_ovh as base_editor_vscode

USER root

COPY assets/vscode.sh /usr/local/bin/aitraining_entrypoint.sh

# Install VSCode Server
RUN wget --quiet https://github.com/coder/code-server/releases/download/v4.3.0/code-server_4.3.0_amd64.deb -O /tmp/code-server.deb && \
    dpkg -i /tmp/code-server.deb && rm /tmp/code-server.deb && \
    chmod a+rx /usr/local/bin/aitraining_entrypoint.sh

USER ovh
RUN /usr/bin/code-server --install-extension ms-python.python --force

EXPOSE 8080
ENTRYPOINT []
CMD ["/usr/local/bin/aitraining_entrypoint.sh"]

# ----- Step aitraining
FROM base_editor_vscode as base

USER ovh
COPY --from=workspace /workspace /.workspace
RUN if [[  -f /tmp/injections.sh ]] ; then bash /tmp/injections.sh $editor && rm /tmp/injections.sh ; else echo "No injections.sh found" ; fi && \
    echo "source /usr/share/bash-completion/completions/git" >> $WORKSPACE_DIR/.bashrc
