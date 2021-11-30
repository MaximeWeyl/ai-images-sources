# OVHcloud AI images

This git repository hosts the sources to build docker images, that
are designed to be used with OVHcloud AI products :

- [AI Training](https://www.ovhcloud.com/en/public-cloud/ai-training/)
- [AI Notebooks](https://www.ovhcloud.com/en/public-cloud/ai-notebook/)


All the images here are packaged so you can use the Nvidia GPUs of those products without having to install the CUDA drivers, nor the ovh user which is used at run time on OVHcloud AI products. The images come in many variants so you can hopefully what you are searching for, or you can modify them if needed.


## Using the prebuilt docker images

The sources contained in this repository are pre-built,
so you can :

- run them directly on OVHcloud AI Training through the UI or the CLI
- run them directly on OVHcloud AI Notebooks through the UI or the CLI
- use them as the base of your custom Dockerfile
- use them for anything you want, this is actually open source, just refer to the license


Location of the images : TODO


## Using the Dockerfile sources

You may also want to use the source Dockerfiles here as a starting point for writing your own fine tuned Dockerfile, without the need to start it from scratch.
