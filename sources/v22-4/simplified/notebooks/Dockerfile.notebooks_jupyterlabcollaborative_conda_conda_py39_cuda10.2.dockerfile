ARG FROM
ARG workspace_FROM="ubuntu"
ARG base_FROM="nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
ARG base_copyworkspace_WORKSPACE

# ----- Step workspace
# ----- Step conda
FROM $workspace_FROM as workspace_conda
ARG workspace_conda_MINICONDA="https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
ARG workspace_conda_MINICONDA_PATH=/workspace/.miniconda3
SHELL ["/bin/bash", "-l", "-c"]
ENV WORKSPACE_DIR=/workspace

USER root
RUN echo "Installing some basic dependencies" && \
    apt-get update && apt-get install -y wget git && apt-get clean && rm -rf /var/lib/apt/lists/* && \
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
# ----- Option conda of framework
FROM workspace_conda as workspace_framework_conda
# This build block (conda) is empty

# ----- Step commonlibs
# ----- Option noinstall of commonlibs
FROM workspace_framework_conda as workspace
# This build block (noinstall) is empty


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
    mkdir -p $REAL_WORKSPACE_DIR && \
    chown 42420:42420 $REAL_WORKSPACE_DIR && \
    ln -s $REAL_WORKSPACE_DIR $WORKSPACE_DIR && \
    chown 42420:42420 $WORKSPACE_DIR && \
    addgroup --gid 42420 ovh && \
    useradd --uid 42420 -g ovh --shell /bin/bash -d $WORKSPACE_DIR ovh && \
    chmod a+rx /usr/bin/job_closer.sh /usr/bin/exit_job

# Must be done here, because user ovh is not created before
COPY --chown=ovh:ovh assets/clone-ai-examples.sh $REAL_WORKSPACE_DIR/.init_workspace/50-clone-ai-examples.sh

USER ovh
WORKDIR /workspace

# ----- Step editor
# ----- Option jupyterlab of editor
FROM base_ovh as base_editor_jupyterlab
ARG base_editor_jupyterlab_labVersion="3.3.4"
ARG base_editor_jupyterlab_labPipVersion="22.0.4"

USER root

ARG base_editor_jupyterlab_NODE_VERSION="v12.20.1"

ENV NVM_DIR="/usr/local/nvm"
ENV PATH="$NVM_DIR/versions/node/$base_editor_jupyterlab_NODE_VERSION/bin:$PATH"

COPY assets/jupyter.sh /usr/local/bin/aitraining_entrypoint.sh

# Set up a python installation especially for jupyter, so it does not interfere with other python installations
# Then installs Jupyterlab
# Then uninstalls the kernel in the lab environment
# We dont want the users to work there
RUN echo "Installing miniconda just for jupyterlab" && \
    wget -q https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh -O /tmp/miniconda.sh &&  \
    bash /tmp/miniconda.sh -b -p /lab && rm /tmp/miniconda.sh && \
    echo "Installing jupyterlab" && \
    /lab/bin/pip install pip==$base_editor_jupyterlab_labPipVersion && \
    /lab/bin/pip install jupyterlab==$base_editor_jupyterlab_labVersion ipywidgets=="7.6.5" && \
    chmod a+rx /usr/local/bin/aitraining_entrypoint.sh && \
    echo "Cleaning stuff to reduce the image size a bit" && \
    rm -rf /root/.cache /root/.conda

RUN echo "Installing nodjs and npm" && \
    mkdir -p $NVM_DIR && \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash && \
    chmod -R a+rx $NVM_DIR && \
    . "$NVM_DIR/nvm.sh" && \
    nvm install $base_editor_jupyterlab_NODE_VERSION && \
    echo "Installing some useful common extensions" && \
    /lab/bin/jupyter labextension install @jupyter-widgets/jupyterlab-manager  jupyter-matplotlib && \
    /lab/bin/jupyter labextension disable @jupyterlab/extensionmanager-extension && \
    /lab/bin/jupyter labextension install @jupyterlab/server-proxy && \
    echo "Uninstalling the kernel of this miniconda installation, we want the user to access only his environment" && \
    rm -rf /lab/share/jupyter/kernels/python3/ && \
    echo "Cleaning stuff to reduce the image size a bit" && \
    rm -rf /tmp/*

COPY --chown=ovh assets/injections_jupyterlab.sh /tmp/injections.sh

USER ovh
EXPOSE 8080
ENTRYPOINT []
CMD ["/usr/local/bin/aitraining_entrypoint.sh"]

# ----- Step copyworkspace
FROM base_editor_jupyterlab as base_copyworkspace

USER ovh
COPY --from=$base_copyworkspace_WORKSPACE /workspace /.workspace

# ----- Step aitraining
FROM base_copyworkspace as base_aitraining

USER ovh
RUN if [[  -f /tmp/injections.sh ]] ; then bash /tmp/injections.sh && rm /tmp/injections.sh ; else echo "No injections.sh found" ; fi && \
    echo "source /usr/share/bash-completion/completions/git" >> $WORKSPACE_DIR/.bashrc

# By default, tensorflow prints a lot of logs including INFO log that looks like warnings and
# errors in the console/notebooks. We disable logs of INFO level and only keep WARNING and ERROR.
# That results in much more readable notebooks.
# This fix is included even in non tensorflow images, because
# tensorflow may be installed later by the user, and is a really common framework on our platform.
ENV TF_CPP_MIN_LOG_LEVEL=1

# This can be used to pass more options to your editor
# This is placed here so this does not break docker cache system,
# This way
ARG base_aitraining_editorOptions="--collaborative"
ENV EDITOR_OPTIONS="$base_aitraining_editorOptions"

# ----- Step ainotebooks
FROM base_aitraining as base

USER root

COPY assets/init_workspace.sh assets/ainotebooks_entrypoint.sh  assets/wait-notebook-init.html /usr/local/bin/

RUN echo "Creating /data : the only folder where the user will be able to write on the host disk rather than Ceph" && \
    mkdir /data && chown 42420:42420 /data && \
    echo "Installing the small waiting server" && \
    mkdir -p /tmp/wait-notebook-init && mv /usr/local/bin/wait-notebook-init.html /tmp/wait-notebook-init/index.html && \
    chown 42420:42420 -R /tmp/wait-notebook-init && \
    echo "Setting files permissions" && \
    chmod a+rx /usr/local/bin/init_workspace.sh /usr/local/bin/ainotebooks_entrypoint.sh && \
    echo "Removing the workspace symlink, because a volume will be mounted there by AI Notebooks" && \
    rm /workspace && mkdir -p /workspace && chown ovh:ovh /workspace

USER ovh
ENTRYPOINT []
CMD ["/usr/local/bin/ainotebooks_entrypoint.sh"]
