ARG FROM
ARG base_FROM=$FROM
ARG conda_FROM=base_0

# ----- Block base
# Base image for AI Training
# You tippically want to use a cuda base image from here :
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
