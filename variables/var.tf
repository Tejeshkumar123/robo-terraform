#####plane###
variable "plane" {
  default = "mouni"
}
output "plane_output" {
  value = var.plane
}
####list###
variable "list" {
  default = ["aws","devops","cloud"]
}
output "list_output" {
  value = var.list[2]
}
####map####
variable "map" {
  default = {
    devops = {
      time = "10am"
      duration ="90 days"
    }
    aws = {
      time = "11 am"
      duration ="30 days"
    }
  }
}
output "map_outputs" {
  value = var.map
}