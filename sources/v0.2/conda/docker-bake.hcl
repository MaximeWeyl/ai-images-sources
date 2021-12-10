target "conda/conda:py38-cuda10.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py38-cuda10.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py37-cuda10.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py37-cuda10.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py39-cuda10.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py39-cuda10.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py38-cuda10.1-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py38-cuda10.1-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py37-cuda10.1-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py37-cuda10.1-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py39-cuda10.1-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py39-cuda10.1-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py38-cuda10.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py38-cuda10.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py37-cuda10.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py37-cuda10.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py39-cuda10.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py39-cuda10.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py38-cuda11.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py38-cuda11.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py37-cuda11.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py37-cuda11.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py39-cuda11.0-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py39-cuda11.0-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py38-cuda11.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py38-cuda11.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py37-cuda11.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py37-cuda11.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh"
  }
}
target "conda/conda:py39-cuda11.2-v0.2" {
  dockerfile = "Dockerfile"
  tags       = ["conda/conda:py39-cuda11.2-v0.2"]
  args = {
    FROM                = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA_URL = "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh"
  }
}
group "default" {
  targets = ["conda/conda:py39-cuda11.2-v0.2", "conda/conda:py39-cuda10.0-v0.2", "conda/conda:py37-cuda10.1-v0.2", "conda/conda:py37-cuda10.2-v0.2", "conda/conda:py39-cuda11.0-v0.2", "conda/conda:py39-cuda10.1-v0.2", "conda/conda:py37-cuda11.0-v0.2", "conda/conda:py37-cuda11.2-v0.2", "conda/conda:py38-cuda10.2-v0.2", "conda/conda:py38-cuda11.2-v0.2", "conda/conda:py38-cuda11.0-v0.2", "conda/conda:py38-cuda10.0-v0.2", "conda/conda:py37-cuda10.0-v0.2", "conda/conda:py38-cuda10.1-v0.2", "conda/conda:py39-cuda10.2-v0.2"]
}
