target "light-light:cuda10.0-v0.5" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}light/light:cuda10.0-v0.5"]
  args = {
    FROM = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
  }
}
target "light-light:cuda10.1-v0.5" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}light/light:cuda10.1-v0.5"]
  args = {
    FROM = "nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04"
  }
}
group "default" {
  targets = ["light/light:cuda10.0-v0.5", "light/light:cuda10.1-v0.5"]
}
variable "RIBS_PREFIX" {
  default = ""
}
