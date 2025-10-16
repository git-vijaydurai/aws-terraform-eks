#eks-node-group-template dynamic values


variable "eks_node_group_template_instance_key_name" {
  default = "jkey"
}

variable "eks_node_group_template_instance_type" {
  default = "t3.small"
}