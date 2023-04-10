variable "instance_tag" {
  type = map(any)
  default = {
    "Name" : "prod-server"
  }
}

variable "instance_ami" {
  type    = string
  default = "ami-068f27965379d536b"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "nic_id" {
  type = string
}

# variable "subnet_id" {
#     type = string
# }
