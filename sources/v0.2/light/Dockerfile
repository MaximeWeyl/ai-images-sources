ARG FROM



# ----- Block base
# This block adds what's needed to make the image comptibe with AI Training
FROM $FROM as base_0
ARG base_WORKSPACE_DIR=/workspace
USER root

# Some tools that are always good to have
RUN apt-get update && apt-get install -y git wget unzip vim rsync

# AI Training requirements
# User 42420 is the user that AI Training and AI Notebooks use to run the image
# Adding the user is not mandatory as both products will overwrite /etc/passwd so the user will exist anyway
# but you may experience file permisson problems if you don't
# Adding user allows for having a home directory (or 'workspace') that has the correct permissions
# It also allows to use this user in the following Dockerfile commands
# For running build commands with ovh user, first use the "USER ovh" command
# For running build commands with root, first use the "USER root" command
RUN mkdir $base_WORKSPACE_DIR && \
    chown 42420:42420 $base_WORKSPACE_DIR && \
    addgroup --gid 42420 ovh && \
    useradd --uid 42420 -g ovh --shell /bin/bash -d $base_WORKSPACE_DIR ovh


# This tool let the user close a job from the inside
# It is used to close a job from the inside of the container
# To close the job with the status STATUS (0 if succss), run the command "exit_job $STATUS"
# The job status can be ommited if the job is succesfull, and the default status 0 will be used
COPY assets/exit_job /usr/bin
COPY assets/job_closer.sh /usr/bin/job_closer.sh
RUN chmod a+x /usr/bin/job_closer.sh /usr/bin/exit_job

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
FROM base_0 as conda_0
ARG conda_MINICONDA
ARG conda_MINICONDA_PATH=/miniconda3

USER root
RUN mkdir -p $(dirname $conda_MINICONDA_PATH) && \
    wget $conda_MINICONDA -O /tmp/miniconda.sh && \
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
