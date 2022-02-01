target "aitraining_jupyterlab_conda_conda_py38_cuda10.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py38-cuda10.0-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py38_cuda10.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py38-cuda10.0-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py37_cuda10.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py37-cuda10.0-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py37_cuda10.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py37-cuda10.0-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py39_cuda10.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py39-cuda10.0-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py39_cuda10.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py39-cuda10.0-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py38_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py38-cuda10.1-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py38_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py38-cuda10.1-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2.2_py38_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.2-py38-cuda10.1-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tf2.2"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.2"
  }
}
target "aitraining_vscode_tensorflow_tf2.2_py38_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.2-py38-cuda10.1-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key                     = "vscode"
    framework_fmt                  = "tf2.2"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.2"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2.3_py38_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.3-py38-cuda10.1-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tf2.3"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.3"
  }
}
target "aitraining_vscode_tensorflow_tf2.3_py38_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.3-py38-cuda10.1-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key                     = "vscode"
    framework_fmt                  = "tf2.3"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.3"
  }
}
target "aitraining_jupyterlab_conda_conda_py37_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py37-cuda10.1-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py37_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py37-cuda10.1-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2.2_py37_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.2-py37-cuda10.1-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tf2.2"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.2"
  }
}
target "aitraining_vscode_tensorflow_tf2.2_py37_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.2-py37-cuda10.1-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key                     = "vscode"
    framework_fmt                  = "tf2.2"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.2"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2.3_py37_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.3-py37-cuda10.1-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tf2.3"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.3"
  }
}
target "aitraining_vscode_tensorflow_tf2.3_py37_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.3-py37-cuda10.1-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key                     = "vscode"
    framework_fmt                  = "tf2.3"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.3"
  }
}
target "aitraining_jupyterlab_conda_conda_py39_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py39-cuda10.1-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py39_cuda10.1_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py39-cuda10.1-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py38_cuda10.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py38-cuda10.2-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py38_cuda10.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py38-cuda10.2-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py37_cuda10.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py37-cuda10.2-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py37_cuda10.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py37-cuda10.2-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py39_cuda10.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py39-cuda10.2-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py39_cuda10.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py39-cuda10.2-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py38_cuda11.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py38-cuda11.0-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py38_cuda11.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py38-cuda11.0-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2.4_py38_cuda11.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.4-py38-cuda11.0-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tf2.4"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.4"
  }
}
target "aitraining_vscode_tensorflow_tf2.4_py38_cuda11.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.4-py38-cuda11.0-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key                     = "vscode"
    framework_fmt                  = "tf2.4"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.4"
  }
}
target "aitraining_jupyterlab_conda_conda_py37_cuda11.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py37-cuda11.0-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py37_cuda11.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py37-cuda11.0-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2.4_py37_cuda11.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.4-py37-cuda11.0-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tf2.4"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.4"
  }
}
target "aitraining_vscode_tensorflow_tf2.4_py37_cuda11.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.4-py37-cuda11.0-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key                     = "vscode"
    framework_fmt                  = "tf2.4"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.4"
  }
}
target "aitraining_jupyterlab_conda_conda_py39_cuda11.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py39-cuda11.0-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py39_cuda11.0_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py39-cuda11.0-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_conda_conda_py38_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py38-cuda11.2-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py38_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py38-cuda11.2-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2.5_py38_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.5-py38-cuda11.2-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tf2.5"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.5"
  }
}
target "aitraining_vscode_tensorflow_tf2.5_py38_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.5-py38-cuda11.2-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key                     = "vscode"
    framework_fmt                  = "tf2.5"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.5"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2.6_py38_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.6-py38-cuda11.2-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tf2.6"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.6"
  }
}
target "aitraining_vscode_tensorflow_tf2.6_py38_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.6-py38-cuda11.2-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_key                     = "vscode"
    framework_fmt                  = "tf2.6"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.6"
  }
}
target "aitraining_jupyterlab_conda_conda_py37_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py37-cuda11.2-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py37_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py37-cuda11.2-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2.5_py37_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.5-py37-cuda11.2-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tf2.5"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.5"
  }
}
target "aitraining_vscode_tensorflow_tf2.5_py37_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.5-py37-cuda11.2-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key                     = "vscode"
    framework_fmt                  = "tf2.5"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.5"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2.6_py37_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.6-py37-cuda11.2-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tf2.6"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.6"
  }
}
target "aitraining_vscode_tensorflow_tf2.6_py37_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.6-py37-cuda11.2-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_key                     = "vscode"
    framework_fmt                  = "tf2.6"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.6"
  }
}
target "aitraining_jupyterlab_conda_conda_py39_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-conda:conda-py39-cuda11.2-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key      = "jupyterlab"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_vscode_conda_conda_py39_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-conda:conda-py39-cuda11.2-v0.6-beta"]
  args = {
    FROM            = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key      = "vscode"
    framework_fmt   = "conda"
    framework_key   = "conda"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2.5_py39_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.5-py39-cuda11.2-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tf2.5"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.5"
  }
}
target "aitraining_vscode_tensorflow_tf2.5_py39_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.5-py39-cuda11.2-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key                     = "vscode"
    framework_fmt                  = "tf2.5"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.5"
  }
}
target "aitraining_jupyterlab_tensorflow_tf2.6_py39_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/jupyterlab-tensorflow:tf2.6-py39-cuda11.2-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key                     = "jupyterlab"
    framework_fmt                  = "tf2.6"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.6"
  }
}
target "aitraining_vscode_tensorflow_tf2.6_py39_cuda11.2_v0.6_beta" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}aitraining/vscode-tensorflow:tf2.6-py39-cuda11.2-v0.6-beta"]
  args = {
    FROM                           = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_key                     = "vscode"
    framework_fmt                  = "tf2.6"
    framework_key                  = "tensorflow"
    framework_tensorflow_tfVersion = "2.6"
  }
}
group "default" {
  targets = ["aitraining/jupyterlab-conda:conda-py38-cuda10.0-v0.6-beta", "aitraining/vscode-conda:conda-py38-cuda10.0-v0.6-beta", "aitraining/jupyterlab-conda:conda-py37-cuda10.0-v0.6-beta", "aitraining/vscode-conda:conda-py37-cuda10.0-v0.6-beta", "aitraining/jupyterlab-conda:conda-py39-cuda10.0-v0.6-beta", "aitraining/vscode-conda:conda-py39-cuda10.0-v0.6-beta", "aitraining/jupyterlab-conda:conda-py38-cuda10.1-v0.6-beta", "aitraining/vscode-conda:conda-py38-cuda10.1-v0.6-beta", "aitraining/jupyterlab-tensorflow:tf2.2-py38-cuda10.1-v0.6-beta", "aitraining/vscode-tensorflow:tf2.2-py38-cuda10.1-v0.6-beta", "aitraining/jupyterlab-tensorflow:tf2.3-py38-cuda10.1-v0.6-beta", "aitraining/vscode-tensorflow:tf2.3-py38-cuda10.1-v0.6-beta", "aitraining/jupyterlab-conda:conda-py37-cuda10.1-v0.6-beta", "aitraining/vscode-conda:conda-py37-cuda10.1-v0.6-beta", "aitraining/jupyterlab-tensorflow:tf2.2-py37-cuda10.1-v0.6-beta", "aitraining/vscode-tensorflow:tf2.2-py37-cuda10.1-v0.6-beta", "aitraining/jupyterlab-tensorflow:tf2.3-py37-cuda10.1-v0.6-beta", "aitraining/vscode-tensorflow:tf2.3-py37-cuda10.1-v0.6-beta", "aitraining/jupyterlab-conda:conda-py39-cuda10.1-v0.6-beta", "aitraining/vscode-conda:conda-py39-cuda10.1-v0.6-beta", "aitraining/jupyterlab-conda:conda-py38-cuda10.2-v0.6-beta", "aitraining/vscode-conda:conda-py38-cuda10.2-v0.6-beta", "aitraining/jupyterlab-conda:conda-py37-cuda10.2-v0.6-beta", "aitraining/vscode-conda:conda-py37-cuda10.2-v0.6-beta", "aitraining/jupyterlab-conda:conda-py39-cuda10.2-v0.6-beta", "aitraining/vscode-conda:conda-py39-cuda10.2-v0.6-beta", "aitraining/jupyterlab-conda:conda-py38-cuda11.0-v0.6-beta", "aitraining/vscode-conda:conda-py38-cuda11.0-v0.6-beta", "aitraining/jupyterlab-tensorflow:tf2.4-py38-cuda11.0-v0.6-beta", "aitraining/vscode-tensorflow:tf2.4-py38-cuda11.0-v0.6-beta", "aitraining/jupyterlab-conda:conda-py37-cuda11.0-v0.6-beta", "aitraining/vscode-conda:conda-py37-cuda11.0-v0.6-beta", "aitraining/jupyterlab-tensorflow:tf2.4-py37-cuda11.0-v0.6-beta", "aitraining/vscode-tensorflow:tf2.4-py37-cuda11.0-v0.6-beta", "aitraining/jupyterlab-conda:conda-py39-cuda11.0-v0.6-beta", "aitraining/vscode-conda:conda-py39-cuda11.0-v0.6-beta", "aitraining/jupyterlab-conda:conda-py38-cuda11.2-v0.6-beta", "aitraining/vscode-conda:conda-py38-cuda11.2-v0.6-beta", "aitraining/jupyterlab-tensorflow:tf2.5-py38-cuda11.2-v0.6-beta", "aitraining/vscode-tensorflow:tf2.5-py38-cuda11.2-v0.6-beta", "aitraining/jupyterlab-tensorflow:tf2.6-py38-cuda11.2-v0.6-beta", "aitraining/vscode-tensorflow:tf2.6-py38-cuda11.2-v0.6-beta", "aitraining/jupyterlab-conda:conda-py37-cuda11.2-v0.6-beta", "aitraining/vscode-conda:conda-py37-cuda11.2-v0.6-beta", "aitraining/jupyterlab-tensorflow:tf2.5-py37-cuda11.2-v0.6-beta", "aitraining/vscode-tensorflow:tf2.5-py37-cuda11.2-v0.6-beta", "aitraining/jupyterlab-tensorflow:tf2.6-py37-cuda11.2-v0.6-beta", "aitraining/vscode-tensorflow:tf2.6-py37-cuda11.2-v0.6-beta", "aitraining/jupyterlab-conda:conda-py39-cuda11.2-v0.6-beta", "aitraining/vscode-conda:conda-py39-cuda11.2-v0.6-beta", "aitraining/jupyterlab-tensorflow:tf2.5-py39-cuda11.2-v0.6-beta", "aitraining/vscode-tensorflow:tf2.5-py39-cuda11.2-v0.6-beta", "aitraining/jupyterlab-tensorflow:tf2.6-py39-cuda11.2-v0.6-beta", "aitraining/vscode-tensorflow:tf2.6-py39-cuda11.2-v0.6-beta"]
}
variable "RIBS_PREFIX" {
  default = ""
}
