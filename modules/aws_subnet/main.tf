
# ---------------- AWS_SUBNET attached to AWS_VPC ------------------
resource "aws_subnet" "eni_subnet" {
    vpc_id = var.vpc_id
    cidr_block = var.subnet_cidr
    # availability_zone  = "us-east-1a"
    tags = var.subnet_tag
}


