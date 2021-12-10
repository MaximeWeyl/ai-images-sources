target "notebooks/jupyterlab-conda:v-py38-cuda10.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py38-cuda10.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-conda:v-py37-cuda10.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py37-cuda10.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-conda:v-py39-cuda10.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py39-cuda10.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-conda:v-py38-cuda10.1-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py38-cuda10.1-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-tensorflow:2.2-py38-cuda10.1-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-tensorflow:2.2-py38-cuda10.1-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "tensorflow==2.2"
  }
}
target "notebooks/jupyterlab-tensorflow:2.3-py38-cuda10.1-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-tensorflow:2.3-py38-cuda10.1-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "tensorflow==2.3"
  }
}
target "notebooks/jupyterlab-conda:v-py37-cuda10.1-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py37-cuda10.1-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-tensorflow:2.2-py37-cuda10.1-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-tensorflow:2.2-py37-cuda10.1-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "tensorflow==2.2"
  }
}
target "notebooks/jupyterlab-tensorflow:2.3-py37-cuda10.1-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-tensorflow:2.3-py37-cuda10.1-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "tensorflow==2.3"
  }
}
target "notebooks/jupyterlab-conda:v-py39-cuda10.1-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py39-cuda10.1-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-conda:v-py38-cuda10.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py38-cuda10.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-pytorch:1.10.0-py38-cuda10.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-pytorch:1.10.0-py38-cuda10.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "torch==1.10.0 torchvision torchaudio"
  }
}
target "notebooks/jupyterlab-conda:v-py37-cuda10.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py37-cuda10.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-pytorch:1.10.0-py37-cuda10.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-pytorch:1.10.0-py37-cuda10.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "torch==1.10.0 torchvision torchaudio"
  }
}
target "notebooks/jupyterlab-conda:v-py39-cuda10.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py39-cuda10.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-pytorch:1.10.0-py39-cuda10.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-pytorch:1.10.0-py39-cuda10.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "torch==1.10.0 torchvision torchaudio"
  }
}
target "notebooks/jupyterlab-conda:v-py38-cuda11.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py38-cuda11.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-tensorflow:2.4-py38-cuda11.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-tensorflow:2.4-py38-cuda11.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "tensorflow==2.4"
  }
}
target "notebooks/jupyterlab-conda:v-py37-cuda11.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py37-cuda11.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-tensorflow:2.4-py37-cuda11.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-tensorflow:2.4-py37-cuda11.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "tensorflow==2.4"
  }
}
target "notebooks/jupyterlab-conda:v-py39-cuda11.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py39-cuda11.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-conda:v-py38-cuda11.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py38-cuda11.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-tensorflow:2.5-py38-cuda11.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-tensorflow:2.5-py38-cuda11.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "tensorflow==2.5"
  }
}
target "notebooks/jupyterlab-tensorflow:2.6-py38-cuda11.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-tensorflow:2.6-py38-cuda11.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "tensorflow==2.6"
  }
}
target "notebooks/jupyterlab-conda:v-py37-cuda11.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py37-cuda11.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-tensorflow:2.5-py37-cuda11.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-tensorflow:2.5-py37-cuda11.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "tensorflow==2.5"
  }
}
target "notebooks/jupyterlab-tensorflow:2.6-py37-cuda11.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-tensorflow:2.6-py37-cuda11.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "tensorflow==2.6"
  }
}
target "notebooks/jupyterlab-conda:v-py39-cuda11.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-conda:v-py39-cuda11.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = ""
  }
}
target "notebooks/jupyterlab-tensorflow:2.5-py39-cuda11.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-tensorflow:2.5-py39-cuda11.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "tensorflow==2.5"
  }
}
target "notebooks/jupyterlab-tensorflow:2.6-py39-cuda11.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["notebooks/jupyterlab-tensorflow:2.6-py39-cuda11.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
    framework_SPEC      = "tensorflow==2.6"
  }
}
group "default" {
  targets = ["notebooks/jupyterlab-tensorflow:2.4-py38-cuda11.0-v0.2", "notebooks/jupyterlab-tensorflow:2.6-py37-cuda11.2-v0.2", "notebooks/jupyterlab-conda:v-py39-cuda11.2-v0.2", "notebooks/jupyterlab-tensorflow:2.6-py39-cuda11.2-v0.2", "notebooks/jupyterlab-tensorflow:2.3-py38-cuda10.1-v0.2", "notebooks/jupyterlab-conda:v-py38-cuda10.1-v0.2", "notebooks/jupyterlab-conda:v-py37-cuda10.1-v0.2", "notebooks/jupyterlab-pytorch:1.10.0-py38-cuda10.2-v0.2", "notebooks/jupyterlab-pytorch:1.10.0-py39-cuda10.2-v0.2", "notebooks/jupyterlab-conda:v-py38-cuda10.0-v0.2", "notebooks/jupyterlab-conda:v-py39-cuda11.0-v0.2", "notebooks/jupyterlab-tensorflow:2.5-py38-cuda11.2-v0.2", "notebooks/jupyterlab-conda:v-py38-cuda10.2-v0.2", "notebooks/jupyterlab-conda:v-py39-cuda10.0-v0.2", "notebooks/jupyterlab-tensorflow:2.3-py37-cuda10.1-v0.2", "notebooks/jupyterlab-conda:v-py39-cuda10.1-v0.2", "notebooks/jupyterlab-conda:v-py39-cuda10.2-v0.2", "notebooks/jupyterlab-conda:v-py37-cuda10.0-v0.2", "notebooks/jupyterlab-tensorflow:2.6-py38-cuda11.2-v0.2", "notebooks/jupyterlab-tensorflow:2.2-py38-cuda10.1-v0.2", "notebooks/jupyterlab-conda:v-py37-cuda11.0-v0.2", "notebooks/jupyterlab-tensorflow:2.4-py37-cuda11.0-v0.2", "notebooks/jupyterlab-conda:v-py37-cuda10.2-v0.2", "notebooks/jupyterlab-conda:v-py37-cuda11.2-v0.2", "notebooks/jupyterlab-tensorflow:2.5-py37-cuda11.2-v0.2", "notebooks/jupyterlab-tensorflow:2.5-py39-cuda11.2-v0.2", "notebooks/jupyterlab-conda:v-py38-cuda11.0-v0.2", "notebooks/jupyterlab-pytorch:1.10.0-py37-cuda10.2-v0.2", "notebooks/jupyterlab-conda:v-py38-cuda11.2-v0.2", "notebooks/jupyterlab-tensorflow:2.2-py37-cuda10.1-v0.2"]
}
