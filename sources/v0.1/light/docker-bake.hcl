target "library-light-py38:cuda10.0-v0.1" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}library/light-py38:cuda10.0-v0.1"]
  args = {
    FROM            = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
  }
}
target "library-light-py38:cuda10.1-v0.1" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}library/light-py38:cuda10.1-v0.1"]
  args = {
    FROM            = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
  }
}
target "library-light-py38:cuda10.2-v0.1" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}library/light-py38:cuda10.2-v0.1"]
  args = {
    FROM            = "nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
  }
}
target "library-light-py38:cuda11.0-v0.1" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}library/light-py38:cuda11.0-v0.1"]
  args = {
    FROM            = "nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
  }
}
target "library-light-py38:cuda11.2-v0.1" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}library/light-py38:cuda11.2-v0.1"]
  args = {
    FROM            = "nvidia/cuda:11.2.1-cudnn8-runtime-ubuntu18.04"
    conda_MINICONDA = "https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
  }
}
group "default" {
  targets = ["library-light-py38:cuda10.2-v0.1", "library-light-py38:cuda11.0-v0.1", "library-light-py38:cuda11.2-v0.1", "library-light-py38:cuda10.0-v0.1", "library-light-py38:cuda10.1-v0.1"]
}
variable "RIBS_PREFIX" {
  default = ""
}
