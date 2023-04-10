
# ---------------- AWS_VPC ------------------
resource "aws_vpc" "eni_vpc" {
    cidr_block = var.vpc_cidr
    tags = var.vpc_tag
}
