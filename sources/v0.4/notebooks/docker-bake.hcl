target "notebooks-jupyterlab-conda:py38-cuda10.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py38-cuda10.0-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py38-cuda10.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py38-cuda10.0-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-conda:py37-cuda10.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py37-cuda10.0-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py37-cuda10.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py37-cuda10.0-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-conda:py39-cuda10.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py39-cuda10.0-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py39-cuda10.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py39-cuda10.0-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-conda:py38-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py38-cuda10.1-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py38-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py38-cuda10.1-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-tensorflow2.2:py38-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-tensorflow2.2:py38-cuda10.1-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "jupyterlab"
    framework_FORMATKEY            = "tensorflow2.2"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.2"
  }
}
target "notebooks-vscode-tensorflow2.2:py38-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-tensorflow2.2:py38-cuda10.1-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "vscode"
    framework_FORMATKEY            = "tensorflow2.2"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.2"
  }
}
target "notebooks-jupyterlab-tensorflow2.3:py38-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-tensorflow2.3:py38-cuda10.1-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "jupyterlab"
    framework_FORMATKEY            = "tensorflow2.3"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.3"
  }
}
target "notebooks-vscode-tensorflow2.3:py38-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-tensorflow2.3:py38-cuda10.1-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "vscode"
    framework_FORMATKEY            = "tensorflow2.3"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.3"
  }
}
target "notebooks-jupyterlab-conda:py37-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py37-cuda10.1-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py37-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py37-cuda10.1-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-tensorflow2.2:py37-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-tensorflow2.2:py37-cuda10.1-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "jupyterlab"
    framework_FORMATKEY            = "tensorflow2.2"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.2"
  }
}
target "notebooks-vscode-tensorflow2.2:py37-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-tensorflow2.2:py37-cuda10.1-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "vscode"
    framework_FORMATKEY            = "tensorflow2.2"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.2"
  }
}
target "notebooks-jupyterlab-tensorflow2.3:py37-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-tensorflow2.3:py37-cuda10.1-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "jupyterlab"
    framework_FORMATKEY            = "tensorflow2.3"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.3"
  }
}
target "notebooks-vscode-tensorflow2.3:py37-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-tensorflow2.3:py37-cuda10.1-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "vscode"
    framework_FORMATKEY            = "tensorflow2.3"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.3"
  }
}
target "notebooks-jupyterlab-conda:py39-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py39-cuda10.1-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py39-cuda10.1-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py39-cuda10.1-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-conda:py38-cuda10.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py38-cuda10.2-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py38-cuda10.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py38-cuda10.2-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-conda:py37-cuda10.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py37-cuda10.2-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py37-cuda10.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py37-cuda10.2-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-conda:py39-cuda10.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py39-cuda10.2-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py39-cuda10.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py39-cuda10.2-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-conda:py38-cuda11.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py38-cuda11.0-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py38-cuda11.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py38-cuda11.0-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-tensorflow2.4:py38-cuda11.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-tensorflow2.4:py38-cuda11.0-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "jupyterlab"
    framework_FORMATKEY            = "tensorflow2.4"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.4"
  }
}
target "notebooks-vscode-tensorflow2.4:py38-cuda11.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-tensorflow2.4:py38-cuda11.0-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "vscode"
    framework_FORMATKEY            = "tensorflow2.4"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.4"
  }
}
target "notebooks-jupyterlab-conda:py37-cuda11.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py37-cuda11.0-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py37-cuda11.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py37-cuda11.0-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-tensorflow2.4:py37-cuda11.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-tensorflow2.4:py37-cuda11.0-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "jupyterlab"
    framework_FORMATKEY            = "tensorflow2.4"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.4"
  }
}
target "notebooks-vscode-tensorflow2.4:py37-cuda11.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-tensorflow2.4:py37-cuda11.0-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "vscode"
    framework_FORMATKEY            = "tensorflow2.4"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.4"
  }
}
target "notebooks-jupyterlab-conda:py39-cuda11.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py39-cuda11.0-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py39-cuda11.0-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py39-cuda11.0-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-conda:py38-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py38-cuda11.2-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py38-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py38-cuda11.2-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-tensorflow2.5:py38-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-tensorflow2.5:py38-cuda11.2-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "jupyterlab"
    framework_FORMATKEY            = "tensorflow2.5"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.5"
  }
}
target "notebooks-vscode-tensorflow2.5:py38-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-tensorflow2.5:py38-cuda11.2-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "vscode"
    framework_FORMATKEY            = "tensorflow2.5"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.5"
  }
}
target "notebooks-jupyterlab-tensorflow2.6:py38-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-tensorflow2.6:py38-cuda11.2-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "jupyterlab"
    framework_FORMATKEY            = "tensorflow2.6"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.6"
  }
}
target "notebooks-vscode-tensorflow2.6:py38-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-tensorflow2.6:py38-cuda11.2-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "vscode"
    framework_FORMATKEY            = "tensorflow2.6"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.6"
  }
}
target "notebooks-jupyterlab-conda:py37-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py37-cuda11.2-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py37-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py37-cuda11.2-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-tensorflow2.5:py37-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-tensorflow2.5:py37-cuda11.2-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "jupyterlab"
    framework_FORMATKEY            = "tensorflow2.5"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.5"
  }
}
target "notebooks-vscode-tensorflow2.5:py37-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-tensorflow2.5:py37-cuda11.2-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "vscode"
    framework_FORMATKEY            = "tensorflow2.5"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.5"
  }
}
target "notebooks-jupyterlab-tensorflow2.6:py37-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-tensorflow2.6:py37-cuda11.2-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "jupyterlab"
    framework_FORMATKEY            = "tensorflow2.6"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.6"
  }
}
target "notebooks-vscode-tensorflow2.6:py37-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-tensorflow2.6:py37-cuda11.2-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "vscode"
    framework_FORMATKEY            = "tensorflow2.6"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.6"
  }
}
target "notebooks-jupyterlab-conda:py39-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-conda:py39-cuda11.2-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "jupyterlab"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-vscode-conda:py39-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-conda:py39-cuda11.2-v0.4"]
  args = {
    FROM                   = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA        = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY       = "vscode"
    framework_FORMATKEY    = "conda"
    framework_FRAMEWORKKEY = "conda"
  }
}
target "notebooks-jupyterlab-tensorflow2.5:py39-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-tensorflow2.5:py39-cuda11.2-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "jupyterlab"
    framework_FORMATKEY            = "tensorflow2.5"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.5"
  }
}
target "notebooks-vscode-tensorflow2.5:py39-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-tensorflow2.5:py39-cuda11.2-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "vscode"
    framework_FORMATKEY            = "tensorflow2.5"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.5"
  }
}
target "notebooks-jupyterlab-tensorflow2.6:py39-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/jupyterlab-tensorflow2.6:py39-cuda11.2-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "jupyterlab"
    framework_FORMATKEY            = "tensorflow2.6"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.6"
  }
}
target "notebooks-vscode-tensorflow2.6:py39-cuda11.2-v0.4" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}notebooks/vscode-tensorflow2.6:py39-cuda11.2-v0.4"]
  args = {
    FROM                           = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA                = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    editor_EDITORKEY               = "vscode"
    framework_FORMATKEY            = "tensorflow2.6"
    framework_FRAMEWORKKEY         = "tensorflow"
    framework_tensorflow_tfVersion = "2.6"
  }
}
group "default" {
  targets = ["notebooks-jupyterlab-conda:py39-cuda10.0-v0.4", "notebooks-vscode-conda:py39-cuda10.2-v0.4", "notebooks-vscode-conda:py39-cuda11.0-v0.4", "notebooks-vscode-tensorflow2.6:py37-cuda11.2-v0.4", "notebooks-vscode-tensorflow2.2:py38-cuda10.1-v0.4", "notebooks-jupyterlab-tensorflow2.5:py37-cuda11.2-v0.4", "notebooks-vscode-conda:py39-cuda10.1-v0.4", "notebooks-vscode-tensorflow2.6:py38-cuda11.2-v0.4", "notebooks-vscode-tensorflow2.4:py37-cuda11.0-v0.4", "notebooks-vscode-tensorflow2.3:py37-cuda10.1-v0.4", "notebooks-jupyterlab-conda:py37-cuda11.0-v0.4", "notebooks-vscode-conda:py37-cuda10.1-v0.4", "notebooks-jupyterlab-tensorflow2.2:py37-cuda10.1-v0.4", "notebooks-jupyterlab-tensorflow2.6:py37-cuda11.2-v0.4", "notebooks-jupyterlab-conda:py37-cuda10.0-v0.4", "notebooks-vscode-conda:py38-cuda11.0-v0.4", "notebooks-jupyterlab-tensorflow2.4:py38-cuda11.0-v0.4", "notebooks-jupyterlab-conda:py39-cuda11.0-v0.4", "notebooks-vscode-conda:py37-cuda11.2-v0.4", "notebooks-vscode-conda:py38-cuda10.0-v0.4", "notebooks-jupyterlab-tensorflow2.3:py37-cuda10.1-v0.4", "notebooks-jupyterlab-conda:py38-cuda11.2-v0.4", "notebooks-vscode-conda:py38-cuda11.2-v0.4", "notebooks-vscode-conda:py39-cuda11.2-v0.4", "notebooks-vscode-tensorflow2.4:py38-cuda11.0-v0.4", "notebooks-jupyterlab-tensorflow2.4:py37-cuda11.0-v0.4", "notebooks-vscode-tensorflow2.5:py38-cuda11.2-v0.4", "notebooks-jupyterlab-conda:py38-cuda10.1-v0.4", "notebooks-jupyterlab-conda:py39-cuda10.1-v0.4", "notebooks-jupyterlab-conda:py38-cuda10.2-v0.4", "notebooks-vscode-tensorflow2.3:py38-cuda10.1-v0.4", "notebooks-jupyterlab-conda:py39-cuda10.2-v0.4", "notebooks-vscode-tensorflow2.5:py37-cuda11.2-v0.4", "notebooks-jupyterlab-tensorflow2.6:py38-cuda11.2-v0.4", "notebooks-jupyterlab-conda:py37-cuda11.2-v0.4", "notebooks-jupyterlab-conda:py39-cuda11.2-v0.4", "notebooks-jupyterlab-tensorflow2.6:py39-cuda11.2-v0.4", "notebooks-jupyterlab-conda:py38-cuda10.0-v0.4", "notebooks-vscode-conda:py38-cuda10.1-v0.4", "notebooks-jupyterlab-tensorflow2.3:py38-cuda10.1-v0.4", "notebooks-vscode-tensorflow2.2:py37-cuda10.1-v0.4", "notebooks-jupyterlab-conda:py38-cuda11.0-v0.4", "notebooks-jupyterlab-tensorflow2.5:py38-cuda11.2-v0.4", "notebooks-jupyterlab-tensorflow2.5:py39-cuda11.2-v0.4", "notebooks-vscode-tensorflow2.5:py39-cuda11.2-v0.4", "notebooks-vscode-conda:py37-cuda10.2-v0.4", "notebooks-jupyterlab-tensorflow2.2:py38-cuda10.1-v0.4", "notebooks-jupyterlab-conda:py37-cuda10.2-v0.4", "notebooks-vscode-conda:py37-cuda10.0-v0.4", "notebooks-vscode-conda:py37-cuda11.0-v0.4", "notebooks-vscode-tensorflow2.6:py39-cuda11.2-v0.4", "notebooks-vscode-conda:py39-cuda10.0-v0.4", "notebooks-jupyterlab-conda:py37-cuda10.1-v0.4", "notebooks-vscode-conda:py38-cuda10.2-v0.4"]
}
variable "RIBS_PREFIX" {
  default = ""
}
