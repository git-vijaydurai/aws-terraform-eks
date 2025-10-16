#eks-node-group-template dynamic values


variable "eks_node_group_template_instance_key_name" {
  default = "ohio-key"
}

variable "eks_node_group_template_instance_type" {
  default = "t2.medium"
}