
# VPC Outputs

output "eks_vpc_id_out" {
  description = "EKS VPC ID"
  value       = module.vpc_module.eks_vpc_id_out
}

output "eks_public_subnets_out" {
  description = "Public subnets for EKS"
  value       = [module.vpc_module.eks_public_1_out, module.vpc_module.eks_public_2_out]
}

output "eks_private_subnets_out" {
  description = "Private subnets for EKS"
  value       = [module.vpc_module.eks_private_1_out, module.vpc_module.eks_private_2_out]
}


# NAT Gateway Outputs

output "eks_nat_gateway_id_out" {
  description = "NAT Gateway ID"
  value       = module.nat_gateway_module.eks_nat_gateway_id_out
}


# IAM Outputs

output "eks_cluster_role_arn_out" {
  description = "EKS Cluster IAM Role ARN"
  value       = module.iam_module.eks_cluster_role_arn_out
}

output "eks_node_role_arn_out" {
  description = "EKS Node Group IAM Role ARN"
  value       = module.iam_module.eks_node_role_arn_out
}


# Cluster Outputs

output "eks_cluster_id_out" {
  description = "EKS Cluster ID"
  value       = module.cluster_module.eks_cluster_id_out
}

output "eks_cluster_endpoint_out" {
  description = "EKS Cluster API Endpoint"
  value       = module.cluster_module.eks_cluster_endpoint_out
}

output "eks_cluster_oidc_issuer_out" {
  description = "EKS Cluster OIDC Issuer URL"
  value       = module.cluster_module.eks_cluster_oidc_issuer_out
}

output "eks_cluster_oidc_thumbprint_out" {
  description = "EKS Cluster OIDC Thumbprint"
  value       = module.cluster_module.eks_cluster_oidc_thumbprint_out
}

# Node Group Outputs

output "eks_node_group_ids_out" {
  description = "EKS Node Group IDs"
  value       = module.node_module.eks_node_group_ids_out
}

output "eks_node_launch_template_id_out" {
  description = "EKS Node Launch Template ID"
  value       = module.node_group_template.eks_node_launch_template_id_out
}
