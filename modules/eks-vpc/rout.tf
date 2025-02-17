resource "aws_route_table" "eks_public_route_table" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eks_vpc_igw.id
  }

  tags = {
    Name = "eks_public_route_table"
  }
}


resource "aws_route_table_association" "eks_public_route_as_1" {
  subnet_id      = aws_subnet.eks_public_1.id
  route_table_id = aws_route_table.eks_public_route_table.id
}

resource "aws_route_table_association" "eks_public_route_as_2" {
  subnet_id      = aws_subnet.eks_public_2.id
  route_table_id = aws_route_table.eks_public_route_table.id
}


resource "aws_route_table" "eks_private_route_table" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.eks_nat_gateway_id_in
  }

  tags = {
    Name = "eks_private_route_table"
  }
}

resource "aws_route_table_association" "eks_private_route_as_1" {
  subnet_id      = aws_subnet.eks_private_1.id
  route_table_id = aws_route_table.eks_private_route_table.id
}

resource "aws_route_table_association" "eks_private_route_as_2" {
  subnet_id      = aws_subnet.eks_private_2.id
  route_table_id = aws_route_table.eks_private_route_table.id
}