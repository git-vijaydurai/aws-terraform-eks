 


<<<<<<< HEAD
=======
  scaling_config {
    desired_size = 1
    max_size     = 3
    min_size     = 1
  }
>>>>>>> 4b0363879e89c8fffc1b2486e53a7905a8eb6ac4

# data "aws_eks_node_group" "ng" {
#   cluster_name    = var.eks_cluster_id_in
#   node_group_name = aws_eks_node_group.node-grp.node_group_name
# }

<<<<<<< HEAD
# resource "aws_autoscaling_policy" "cpu_policy" {
#   name                   = "cpu-scaling"
#   autoscaling_group_name = data.aws_eks_node_group.ng.resources[0].autoscaling_groups[0].name
#   policy_type            = "TargetTrackingScaling"

#   target_tracking_configuration {
#     predefined_metric_specification {
#       predefined_metric_type = "ASGAverageCPUUtilization"
#     }
#     target_value = 18.0
#   }
# }
=======
  launch_template {
    id      = var.eks_node_launch_template_id_in
    version = "$Latest"
  }
  tags = {
    "k8s.io/cluster-autoscaler/enabled"                     = "true"
    "k8s.io/cluster-autoscaler/${var.eks_cluster_id_in}"    = "owned"
  }

}

>>>>>>> 4b0363879e89c8fffc1b2486e53a7905a8eb6ac4
