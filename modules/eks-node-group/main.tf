resource "aws_eks_node_group" "node-grp" {
  cluster_name    = var.eks_cluster_id_in
  node_group_name = "eks-node-group"
  node_role_arn   = var.eks_node_role_arn_in
  subnet_ids      = [var.eks_private_1_in, var.eks_private_2_in]
  capacity_type   = "ON_DEMAND"


  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  launch_template {
    id      = var.eks_node_launch_template_id_in
    version = "$Latest"
  }
}
