 



# data "aws_eks_node_group" "ng" {
#   cluster_name    = var.eks_cluster_id_in
#   node_group_name = aws_eks_node_group.node-grp.node_group_name
# }

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
