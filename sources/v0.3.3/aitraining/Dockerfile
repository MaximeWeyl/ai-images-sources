ARG FROM
ARG base_FROM=$FROM
ARG conda_FROM=base_0
ARG framework_FROM=conda_0
ARG jupyterlab_FROM=framework_0

# ----- Block base
# Base image for AI Training
# You typically want to use a cuda base image from here :
# https://hub.docker.com/r/nvidia/cuda/tags
FROM $base_FROM as base_0
ARG base_WORKSPACE_DIR=/workspace
USER root

# Some tools that are always good to have
RUN apt-get update && apt-get install -y git wget unzip vim rsync

# AI Training requirements

RUN mkdir $base_WORKSPACE_DIR && \
    chown 42420:42420 $base_WORKSPACE_DIR && \
    addgroup --gid 42420 ovh && \
    useradd --uid 42420 -g ovh --shell /bin/bash -d $base_WORKSPACE_DIR ovh


# For closing jobs
COPY assets/exit_job /usr/bin
COPY assets/job_closer.sh /usr/bin/job_closer.sh
RUN chmod a+x /usr/bin/job_closer.sh /usr/bin/exit_job


# Configuration for ovh user
USER ovh
WORKDIR /workspace


# AI Training CLI : ovhai
RUN wget https://cli.gra.training.ai.cloud.ovh.net/ovhai-linux.zip && \
    unzip ovhai-linux.zip && rm ovhai-linux.zip && \
    chmod a+x ovhai && mkdir -p /$base_WORKSPACE_DIR/.local/bin && mv ovhai /$base_WORKSPACE_DIR/.local/bin/

# For loading .bashrc even through ssh or jupyter terminal
RUN echo "if [ -f ~/.bashrc ]; then . ~/.bashrc ; fi" > .bash_profile

ENV PATH=$base_WORKSPACE_DIR/.local/bin:$PATH
ENV LANG=C.UTF-8
ENV SHELL=/bin/bash
SHELL ["/bin/bash", "-c"]

# ----- Block conda
FROM $conda_FROM as conda_0
ARG conda_MINICONDA_URL
ARG conda_MINICONDA_PATH=/miniconda3

USER root
RUN mkdir -p $(dirname $conda_MINICONDA_PATH) && \
    wget $conda_MINICONDA_URL -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p $conda_MINICONDA_PATH && \
    rm /tmp/miniconda.sh

# We set the base environment
# For root (for the rest of the build process)
USER root
RUN bash -c "$conda_MINICONDA_PATH/bin/conda init bash"

# And for ovh (for the run time)
USER ovh
RUN bash -c "$conda_MINICONDA_PATH/bin/conda init bash"

# So the conda config is available in the rest of the building process
SHELL ["/bin/bash", "-il", "-c"]

# ----- Block framework
FROM $framework_FROM as framework_0

ARG framework_SPEC

RUN if [ -n "$framework_SPEC" ] ; then pip install --no-input $framework_SPEC ; fi

# ----- Block jupyterlab
FROM $jupyterlab_FROM as jupyterlab_0

ARG jupyterlab_IMAGE_NAME
ENV IMAGE_NAME=$jupyterlab_IMAGE_NAME

USER root

COPY assets/install_tools.sh /tmp/install_tools.sh
COPY assets/jupyter.sh /usr/bin/aitraining_entrypoint.sh

RUN chmod a+x /tmp/install_tools.sh /usr/bin/aitraining_entrypoint.sh && \
    /tmp/install_tools.sh && rm /tmp/install_tools.sh

RUN if [ "$jupyterlab_IMAGE_NAME" = "fastai" ]; then pip install fastbook; fi

# install nvm
# https://github.com/creationix/nvm#install-script
RUN curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

ENV NVM_DIR /root/.nvm
ENV NODE_VERSION v12.20.1

# install node and npm
RUN source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

# add node and npm to path so the commands are available
ENV NODE_PATH $NVM_DIR/versions/node/$NODE_VERSION/bin
ENV PATH $NODE_PATH:$PATH

# Set up a python inqstallation especially for jupyter, so it does not interfere with other python installations
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh -O /tmp/miniconda.sh
RUN bash /tmp/miniconda.sh -b -p /lab && rm /tmp/miniconda.sh


# Install Jupyter
RUN /lab/bin/pip install pip==20.3.4 && \
    /lab/bin/pip install jupyterlab==2.2.9 ipywidgets==7.6.3 && \
    /lab/bin/jupyter labextension install @jupyter-widgets/jupyterlab-manager && \
    /lab/bin/jupyter labextension install jupyter-matplotlib && \
    /lab/bin/jupyter nbextension enable --py widgetsnbextension #enable ipywidgets

# Uninstalls the kernel in the lab environment
# We dont want the users to work there
RUN rm -rf /lab/share/jupyter/kernels/python3/


# Installation of the ipykernel in the main python environment if it not already installed
USER ovh
# The name python3 is important if you want the /lab environment to be excluded from the launcher
# If the kernel is already installed, it does nothing
RUN if [[ $(/lab/bin/jupyter kernelspec list | grep 'python3 */usr/local/share/jupyter/kernels/python3') ]] ; \
    then echo "Existing kernel found, we skip kernel installation." ; \
    else python -m pip install ipykernel && ipython kernel install --name python3 --display-name "Main Python" --user --env PATH "$(dirname $( which python )):$PATH"; \
    fi

USER ovh
WORKDIR /workspace
EXPOSE 8080
ENTRYPOINT []
CMD ["/usr/bin/aitraining_entrypoint.sh"]
