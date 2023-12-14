######## to print upper char####
variable "sa" {
  default = "apple"
}
output "s1" {
  value = upper(var.sa)
}
####CEIL VALUE####
output "s2" {
  value = ceil(5.1)
}
##min###
output "s3" {
  value = min(12,78,6)
}
####length###
variable "list" {
  default = ["apple","bananna"]
}
output "s4" {
  value = length(var.list)
}
#####loop and ans####
output "s5" {
  value = element(var.list,3 )
}
####map type list###
variable "course" {
  default = {
    devops ={
      topic = ["devops","linux"]
      duration ="90 days"
    }
    aws = {
      topic = "cloud"
    }
  }
}
output "course_defulf" {
  value = var.course["devops"]["topic"]
}
######### lookup whether the value is there or not#####
output "course_lookup" {
  value = lookup(lookup(var.course,"AWS",null),"Duration","Duration not found")
}
####### Merging of two functions ######
variable "name" {
  default = {
    fruit_name = "apple"
  }
}

variable "details" {
  default = {
    quantity = 100
    rating   = 4.0
  }
}
output "merge" {
  value = merge(var.name, var.details)
}

