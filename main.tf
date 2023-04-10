module "vpc" {
  source   = "./modules/aws_vpc"
  vpc_cidr = var.vpc_cidr
  vpc_tag  = var.vpc_tag
}

module "subnet" {
  source      = "./modules/aws_subnet"
  vpc_id      = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  subnet_tag  = var.subnet_tag
}

module "sg" {
  source = "./modules/aws_sg"
  vpc_id = module.vpc.vpc_id
  sg_tag = var.sg_tag
}

module "nic" {
  source      = "./modules/aws_nic"
  subnet_id   = module.subnet.subnet_id
  private_ips = var.private_ips
  nic_tag     = var.nic_tag
}

module "instance" {
  source        = "./modules/aws_instance"
  instance_ami  = var.instance_ami
  instance_type = var.instance_type
  nic_id        = module.nic.nic_id
  # subnet_id = module.subnet.subnet_id
  instance_tag = var.instance_tag
}
