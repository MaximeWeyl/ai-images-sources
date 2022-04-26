variable "RIBS_PREFIX" {
  default = ""
}
variable "CACHE_FROM" {
  default = []
}
variable "VERSION" {
  default = "v22-4"
}
variable "VERSION_SUFFIX" {
  default = "-${VERSION}"
}
group "all" {
  targets = ["aitraining_jupyterlab_conda_conda_py38_cuda10-0", "aitraining_vscode_conda_conda_py38_cuda10-0", "aitraining_jupyterlab_conda_conda_py39_cuda10-0", "aitraining_vscode_conda_conda_py39_cuda10-0", "aitraining_jupyterlab_conda_conda_py38_cuda10-1", "aitraining_vscode_conda_conda_py38_cuda10-1", "aitraining_jupyterlab_tensorflow_tf2-2_py38_cuda10-1", "aitraining_vscode_tensorflow_tf2-2_py38_cuda10-1", "aitraining_jupyterlab_tensorflow_tf2-3_py38_cuda10-1", "aitraining_vscode_tensorflow_tf2-3_py38_cuda10-1", "aitraining_jupyterlab_conda_conda_py39_cuda10-1", "aitraining_vscode_conda_conda_py39_cuda10-1", "aitraining_jupyterlab_conda_conda_py38_cuda10-2", "aitraining_vscode_conda_conda_py38_cuda10-2", "aitraining_jupyterlab_conda_conda_py39_cuda10-2", "aitraining_vscode_conda_conda_py39_cuda10-2", "aitraining_jupyterlab_pytorch_pytorch1-9-0_py39_cuda10-2", "aitraining_vscode_pytorch_pytorch1-9-0_py39_cuda10-2", "aitraining_jupyterlab_pytorch_pytorch1-10-1_py39_cuda10-2", "aitraining_vscode_pytorch_pytorch1-10-1_py39_cuda10-2", "aitraining_jupyterlab_conda_conda_py38_cuda11-0", "aitraining_vscode_conda_conda_py38_cuda11-0", "aitraining_jupyterlab_tensorflow_tf2-4_py38_cuda11-0", "aitraining_vscode_tensorflow_tf2-4_py38_cuda11-0", "aitraining_jupyterlab_conda_conda_py39_cuda11-0", "aitraining_vscode_conda_conda_py39_cuda11-0", "aitraining_jupyterlab_conda_conda_py38_cuda11-2", "aitraining_vscode_conda_conda_py38_cuda11-2", "aitraining_jupyterlab_conda_conda_py39_cuda11-2", "aitraining_vscode_conda_conda_py39_cuda11-2", "aitraining_jupyterlab_tensorflow_tf2-5_py39_cuda11-2", "aitraining_vscode_tensorflow_tf2-5_py39_cuda11-2", "aitraining_jupyterlab_tensorflow_tf2-6_py39_cuda11-2", "aitraining_vscode_tensorflow_tf2-6_py39_cuda11-2", "aitraining_jupyterlab_tensorflow_tf2-7_py39_cuda11-2", "aitraining_vscode_tensorflow_tf2-7_py39_cuda11-2", "aitraining_jupyterlab_tensorflow_tf2-8_py39_cuda11-2", "aitraining_vscode_tensorflow_tf2-8_py39_cuda11-2", "aitraining_jupyterlab_conda_conda_py38_cpu", "aitraining_vscode_conda_conda_py38_cpu", "aitraining_jupyterlab_conda_conda_py39_cpu", "aitraining_vscode_conda_conda_py39_cpu", "aitraining_jupyterlab_sklearn_sklearn1-0-2_py39_cpu", "aitraining_vscode_sklearn_sklearn1-0-2_py39_cpu"]
}
target "aitraining_jupyterlab_conda_conda_py38_cuda10-0" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py38-cuda10.0${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "conda"
    workspace_framework_key              = "conda"
  }
}
target "aitraining_vscode_conda_conda_py38_cuda10-0" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py38-cuda10.0${VERSION_SUFFIX}"]
  args = {
    base_FROM                 = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    base_editor_key           = "vscode"
    workspace_FROM            = "ubuntu"
    workspace_conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt   = "conda"
    workspace_framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py39_cuda10-0" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py39-cuda10.0${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "conda"
    workspace_framework_key              = "conda"
  }
}
target "aitraining_vscode_conda_conda_py39_cuda10-0" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py39-cuda10.0${VERSION_SUFFIX}"]
  args = {
    base_FROM                 = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    base_editor_key           = "vscode"
    workspace_FROM            = "ubuntu"
    workspace_conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt   = "conda"
    workspace_framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py38_cuda10-1" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py38-cuda10.1${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "conda"
    workspace_framework_key              = "conda"
  }
}
target "aitraining_vscode_conda_conda_py38_cuda10-1" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py38-cuda10.1${VERSION_SUFFIX}"]
  args = {
    base_FROM                 = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    base_editor_key           = "vscode"
    workspace_FROM            = "ubuntu"
    workspace_conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt   = "conda"
    workspace_framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2-2_py38_cuda10-1" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.2-py38-cuda10.1${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion   = "22.0.4"
    base_editor_jupyterlab_labVersion      = "3.3.4"
    base_editor_key                        = "jupyterlab"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.2"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.2"
  }
}
target "aitraining_vscode_tensorflow_tf2-2_py38_cuda10-1" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.2-py38-cuda10.1${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    base_editor_key                        = "vscode"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.2"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.2"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2-3_py38_cuda10-1" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.3-py38-cuda10.1${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion   = "22.0.4"
    base_editor_jupyterlab_labVersion      = "3.3.4"
    base_editor_key                        = "jupyterlab"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.3"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.3"
  }
}
target "aitraining_vscode_tensorflow_tf2-3_py38_cuda10-1" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.3-py38-cuda10.1${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    base_editor_key                        = "vscode"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.3"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.3"
  }
}
target "aitraining_jupyterlab_conda_conda_py39_cuda10-1" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py39-cuda10.1${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "conda"
    workspace_framework_key              = "conda"
  }
}
target "aitraining_vscode_conda_conda_py39_cuda10-1" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py39-cuda10.1${VERSION_SUFFIX}"]
  args = {
    base_FROM                 = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    base_editor_key           = "vscode"
    workspace_FROM            = "ubuntu"
    workspace_conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt   = "conda"
    workspace_framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py38_cuda10-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py38-cuda10.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "conda"
    workspace_framework_key              = "conda"
  }
}
target "aitraining_vscode_conda_conda_py38_cuda10-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py38-cuda10.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                 = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    base_editor_key           = "vscode"
    workspace_FROM            = "ubuntu"
    workspace_conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt   = "conda"
    workspace_framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py39_cuda10-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py39-cuda10.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "conda"
    workspace_framework_key              = "conda"
  }
}
target "aitraining_vscode_conda_conda_py39_cuda10-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py39-cuda10.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                 = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    base_editor_key           = "vscode"
    workspace_FROM            = "ubuntu"
    workspace_conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt   = "conda"
    workspace_framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_pytorch_pytorch1-9-0_py39_cuda10-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-pytorch:pytorch1.9.0-py39-cuda10.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion     = "22.0.4"
    base_editor_jupyterlab_labVersion        = "3.3.4"
    base_editor_key                          = "jupyterlab"
    workspace_FROM                           = "ubuntu"
    workspace_conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                  = "pytorch1.9.0"
    workspace_framework_key                  = "pytorch"
    workspace_framework_pytorch_dependencies = "torch==1.9.0+cu102 torchvision==0.10.0+cu102 torchaudio==0.9.0"
    workspace_framework_pytorch_version      = "1.9.0"
  }
}
target "aitraining_vscode_pytorch_pytorch1-9-0_py39_cuda10-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-pytorch:pytorch1.9.0-py39-cuda10.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    base_editor_key                          = "vscode"
    workspace_FROM                           = "ubuntu"
    workspace_conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                  = "pytorch1.9.0"
    workspace_framework_key                  = "pytorch"
    workspace_framework_pytorch_dependencies = "torch==1.9.0+cu102 torchvision==0.10.0+cu102 torchaudio==0.9.0"
    workspace_framework_pytorch_version      = "1.9.0"
  }
}
target "aitraining_jupyterlab_pytorch_pytorch1-10-1_py39_cuda10-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-pytorch:pytorch1.10.1-py39-cuda10.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion     = "22.0.4"
    base_editor_jupyterlab_labVersion        = "3.3.4"
    base_editor_key                          = "jupyterlab"
    workspace_FROM                           = "ubuntu"
    workspace_conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                  = "pytorch1.10.1"
    workspace_framework_key                  = "pytorch"
    workspace_framework_pytorch_dependencies = "torch==1.10.1+cu102 torchvision==0.11.2+cu102 torchaudio==0.10.1"
    workspace_framework_pytorch_version      = "1.10.1"
  }
}
target "aitraining_vscode_pytorch_pytorch1-10-1_py39_cuda10-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-pytorch:pytorch1.10.1-py39-cuda10.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    base_editor_key                          = "vscode"
    workspace_FROM                           = "ubuntu"
    workspace_conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                  = "pytorch1.10.1"
    workspace_framework_key                  = "pytorch"
    workspace_framework_pytorch_dependencies = "torch==1.10.1+cu102 torchvision==0.11.2+cu102 torchaudio==0.10.1"
    workspace_framework_pytorch_version      = "1.10.1"
  }
}
target "aitraining_jupyterlab_conda_conda_py38_cuda11-0" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py38-cuda11.0${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "conda"
    workspace_framework_key              = "conda"
  }
}
target "aitraining_vscode_conda_conda_py38_cuda11-0" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py38-cuda11.0${VERSION_SUFFIX}"]
  args = {
    base_FROM                 = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    base_editor_key           = "vscode"
    workspace_FROM            = "ubuntu"
    workspace_conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt   = "conda"
    workspace_framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2-4_py38_cuda11-0" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.4-py38-cuda11.0${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion   = "22.0.4"
    base_editor_jupyterlab_labVersion      = "3.3.4"
    base_editor_key                        = "jupyterlab"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.4"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.4"
  }
}
target "aitraining_vscode_tensorflow_tf2-4_py38_cuda11-0" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.4-py38-cuda11.0${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    base_editor_key                        = "vscode"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.4"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.4"
  }
}
target "aitraining_jupyterlab_conda_conda_py39_cuda11-0" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py39-cuda11.0${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "conda"
    workspace_framework_key              = "conda"
  }
}
target "aitraining_vscode_conda_conda_py39_cuda11-0" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py39-cuda11.0${VERSION_SUFFIX}"]
  args = {
    base_FROM                 = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    base_editor_key           = "vscode"
    workspace_FROM            = "ubuntu"
    workspace_conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt   = "conda"
    workspace_framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py38_cuda11-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py38-cuda11.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "conda"
    workspace_framework_key              = "conda"
  }
}
target "aitraining_vscode_conda_conda_py38_cuda11-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py38-cuda11.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                 = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    base_editor_key           = "vscode"
    workspace_FROM            = "ubuntu"
    workspace_conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt   = "conda"
    workspace_framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py39_cuda11-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py39-cuda11.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "conda"
    workspace_framework_key              = "conda"
  }
}
target "aitraining_vscode_conda_conda_py39_cuda11-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py39-cuda11.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                 = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    base_editor_key           = "vscode"
    workspace_FROM            = "ubuntu"
    workspace_conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt   = "conda"
    workspace_framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2-5_py39_cuda11-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.5-py39-cuda11.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion   = "22.0.4"
    base_editor_jupyterlab_labVersion      = "3.3.4"
    base_editor_key                        = "jupyterlab"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.5"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.5"
  }
}
target "aitraining_vscode_tensorflow_tf2-5_py39_cuda11-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.5-py39-cuda11.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    base_editor_key                        = "vscode"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.5"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.5"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2-6_py39_cuda11-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.6-py39-cuda11.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion   = "22.0.4"
    base_editor_jupyterlab_labVersion      = "3.3.4"
    base_editor_key                        = "jupyterlab"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.6"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.6"
  }
}
target "aitraining_vscode_tensorflow_tf2-6_py39_cuda11-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.6-py39-cuda11.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    base_editor_key                        = "vscode"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.6"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.6"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2-7_py39_cuda11-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.7-py39-cuda11.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion   = "22.0.4"
    base_editor_jupyterlab_labVersion      = "3.3.4"
    base_editor_key                        = "jupyterlab"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.7"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.7"
  }
}
target "aitraining_vscode_tensorflow_tf2-7_py39_cuda11-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.7-py39-cuda11.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    base_editor_key                        = "vscode"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.7"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.7"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2-8_py39_cuda11-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.8-py39-cuda11.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    base_editor_jupyterlab_labPipVersion   = "22.0.4"
    base_editor_jupyterlab_labVersion      = "3.3.4"
    base_editor_key                        = "jupyterlab"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.8"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.8"
  }
}
target "aitraining_vscode_tensorflow_tf2-8_py39_cuda11-2" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.8-py39-cuda11.2${VERSION_SUFFIX}"]
  args = {
    base_FROM                              = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    base_editor_key                        = "vscode"
    workspace_FROM                         = "ubuntu"
    workspace_conda_MINICONDA              = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt                = "tf2.8"
    workspace_framework_key                = "tensorflow"
    workspace_framework_tensorflow_version = "2.8"
  }
}
target "aitraining_jupyterlab_conda_conda_py38_cpu" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py38-cpu${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "ubuntu:18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "conda"
    workspace_framework_key              = "conda"
  }
}
target "aitraining_vscode_conda_conda_py38_cpu" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py38-cpu${VERSION_SUFFIX}"]
  args = {
    base_FROM                 = "ubuntu:18.04"
    base_editor_key           = "vscode"
    workspace_FROM            = "ubuntu"
    workspace_conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt   = "conda"
    workspace_framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py39_cpu" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py39-cpu${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "ubuntu:18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "conda"
    workspace_framework_key              = "conda"
  }
}
target "aitraining_vscode_conda_conda_py39_cpu" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py39-cpu${VERSION_SUFFIX}"]
  args = {
    base_FROM                 = "ubuntu:18.04"
    base_editor_key           = "vscode"
    workspace_FROM            = "ubuntu"
    workspace_conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt   = "conda"
    workspace_framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_sklearn_sklearn1-0-2_py39_cpu" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-sklearn:sklearn1.0.2-py39-cpu${VERSION_SUFFIX}"]
  args = {
    base_FROM                            = "ubuntu:18.04"
    base_editor_jupyterlab_labPipVersion = "22.0.4"
    base_editor_jupyterlab_labVersion    = "3.3.4"
    base_editor_key                      = "jupyterlab"
    workspace_FROM                       = "ubuntu"
    workspace_conda_MINICONDA            = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt              = "sklearn1.0.2"
    workspace_framework_key              = "sklearn"
    workspace_framework_sklearn_version  = "1.0.2"
  }
}
target "aitraining_vscode_sklearn_sklearn1-0-2_py39_cpu" {
  dockerfile = "Dockerfile"
  cache-from = CACHE_FROM
  tags       = ["${RIBS_PREFIX}aitraining/vscode-sklearn:sklearn1.0.2-py39-cpu${VERSION_SUFFIX}"]
  args = {
    base_FROM                           = "ubuntu:18.04"
    base_editor_key                     = "vscode"
    workspace_FROM                      = "ubuntu"
    workspace_conda_MINICONDA           = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    workspace_framework_fmt             = "sklearn1.0.2"
    workspace_framework_key             = "sklearn"
    workspace_framework_sklearn_version = "1.0.2"
  }
}
