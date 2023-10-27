variable "plane" {
  default = "mouni"
}
output "plane_output" {
  value = var.plane
}

variable "list" {
  default = ["aws","devops","cloud"]
}
output "list_output" {
  value = var.list [3]
}