resource "aws_subnet" "eks_public_1" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = "10.10.0.0/20"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "eks_public_1"
  }
}

resource "aws_subnet" "eks_public_2" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = "10.10.16.0/20"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "eks_public_2"
  }
}

resource "aws_subnet" "eks_private_1" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = "10.10.32.0/20"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "eks_private_1"
  }
}

resource "aws_subnet" "eks_private_2" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = "10.10.48.0/20"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "eks_private_2"
  }
}
