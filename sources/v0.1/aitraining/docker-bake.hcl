target "aitraining-jupyterlab-conda:py38-cuda10.1-v0.1" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:py38-cuda10.1-v0.1"]
  args = {
    FROM            = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining-jupyterlab-tensorflow2.2:py38-cuda10.1-v0.1" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow2.2:py38-cuda10.1-v0.1"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tensorflow2.2"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.2"
  }
}
target "aitraining-jupyterlab-conda:py37-cuda10.1-v0.1" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:py37-cuda10.1-v0.1"]
  args = {
    FROM            = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining-jupyterlab-tensorflow2.2:py37-cuda10.1-v0.1" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow2.2:py37-cuda10.1-v0.1"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tensorflow2.2"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.2"
  }
}
group "default" {
  targets = ["aitraining-jupyterlab-tensorflow2.2:py38-cuda10.1-v0.1", "aitraining-jupyterlab-conda:py37-cuda10.1-v0.1", "aitraining-jupyterlab-tensorflow2.2:py37-cuda10.1-v0.1", "aitraining-jupyterlab-conda:py38-cuda10.1-v0.1"]
}
variable "RIBS_PREFIX" {
  default = ""
}
