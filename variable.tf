variable "vpc_cidr" {
  type    = string
  default = "172.16.0.0/16"
}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name" = "tf-example-vpc"
  }
}

# -----subnet------
# variable "vpc_id" {
#     type = string
# }

variable "subnet_cidr" {
  type    = string
  default = "172.16.1.0/24"
}

variable "subnet_tag" {
  type = map(any)
  default = {
    "Name" : "eni_subnet"
  }
}

# -----sg------
variable "sg_tag" {
  type = map(any)
  default = {
    "Name" : "allow_tls"
  }
}

# -----nic------
# variable "subnet_id" {
#     type = string
# }

variable "nic_tag" {
  type = map(any)
  default = {
    "Name" = "primary_network_interface"
  }
}

variable "private_ips" {
  type    = list(string)
  default = ["172.16.1.100"]
}

# -----instance------
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

# variable "nic_id" {
#     type = string
# }
