resource "aws_internet_gateway" "eks_vpc_igw" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = {
    Name = "eks_vpc_igw"
  }
}