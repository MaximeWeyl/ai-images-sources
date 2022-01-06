target "light-light:cuda10.0-v0.2-light" {
  dockerfile = "Dockerfile"
  tags       = ["${RIBS_PREFIX}light/light:cuda10.0-v0.2-light"]
  args = {
    FROM = "alpine"
  }
}
group "default" {
  targets = ["light/light:cuda10.0-v0.2-light"]
}
variable "RIBS_PREFIX" {
  default = ""
}
