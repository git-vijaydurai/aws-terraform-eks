resource "aws_vpc" "eks_vpc" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "eks_vpc"
  }
}