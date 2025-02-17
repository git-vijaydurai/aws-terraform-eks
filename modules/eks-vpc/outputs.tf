output "eks_vpc_id_out" {
  value = aws_vpc.eks_vpc.id
}

output "eks_public_1_out" {
  value = aws_subnet.eks_public_1.id
}

output "eks_public_2_out" {
  value = aws_subnet.eks_public_2.id
}

output "eks_private_1_out" {
  value = aws_subnet.eks_private_1.id
}


output "eks_private_2_out" {
  value = aws_subnet.eks_private_2.id
}