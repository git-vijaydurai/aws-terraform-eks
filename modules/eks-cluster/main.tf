resource "aws_eks_cluster" "eks" {
  name     = "eks-cluster"
  role_arn = var.eks_cluster_role_arn_in
  version  = "1.30"


  vpc_config {
    subnet_ids              = [var.eks_private_1_in, var.eks_private_2_in]
    endpoint_private_access = true
    endpoint_public_access  = true
  }

}

data "tls_certificate" "eks_tls_certificate" {
  url = aws_eks_cluster.eks.identity.0.oidc.0.issuer
}


<<<<<<< HEAD
resource "aws_eks_addon" "pod_identity_agent" {
  cluster_name                = aws_eks_cluster.eks.name
  addon_name                  = "eks-pod-identity-agent"
  resolve_conflicts_on_update = "PRESERVE"
<<<<<<< HEAD
}
=======
}
>>>>>>> 4b0363879e89c8fffc1b2486e53a7905a8eb6ac4
=======
>>>>>>> parent of 5d32840 (Update README with project structure)
