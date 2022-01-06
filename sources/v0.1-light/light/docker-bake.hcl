target "light-light:cuda10.0-v0.1-light" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}light/light:cuda10.0-v0.1-light"]
  args = {
    FROM = "nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04"
  }
}
group "default" {
  targets = ["light/light:cuda10.0-v0.1-light"]
}
variable "RIBS_PREFIX" {
  default = ""
}
