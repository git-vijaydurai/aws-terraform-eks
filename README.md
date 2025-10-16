# 🐝 Terraform AWS EKS Cluster Automation

This repository provisions an **Amazon EKS (Elastic Kubernetes Service) cluster** along with all required AWS resources using **Terraform** and a modular design.

It includes **VPC, NAT Gateways, IAM roles, Node Groups, EKS cluster**, and **Node Group Templates**.

---

## 📁 Project Structure

```
├── env/
│   ├── main.tf
│   ├── provider.tf
│   ├── variable.tf
│   └── outputs.tf
│
├── modules/
│   ├── eks-cluster/
│   ├── eks-iam/
│   ├── eks-nat-gateway/
│   ├── eks-node-group/
│   ├── eks-node-group-template/
│   └── eks-vpc/
└── README.md
```

---

## ⚙️ How It Works

The main Terraform file (`env/main.tf`) orchestrates the modules in the following order:

1. **VPC Module (`eks-vpc`)** – Creates VPC, subnets, and routing.
2. **NAT Gateway Module (`eks-nat-gateway`)** – Creates NAT gateway for private subnets.
3. **Cluster Module (`eks-cluster`)** – Creates the EKS cluster using VPC subnets and IAM roles.
4. **IAM Module (`eks-iam`)** – Creates IAM roles for EKS cluster and nodes.
5. **Node Group Template Module (`eks-node-group-template`)** – Configures dynamic EC2 instance templates.
6. **Node Module (`eks-node-group`)** – Launches worker nodes attached to the cluster.

Each module exposes outputs that are fed as inputs into dependent modules, ensuring proper orchestration.

---

## 🚀 Setup Instructions

### 1️⃣ Initialize Terraform
```bash
terraform init
```

### 2️⃣ Plan Infrastructure
```bash
terraform plan -out=tfplan
```
- Optional: Save the plan to a text file:
```bash
terraform show -no-color tfplan > tf-plan-output.txt
```

### 3️⃣ Apply Infrastructure
```bash
terraform apply tfplan
```
- After apply, outputs are saved in `eks-output.txt` and include cluster endpoints, node groups, and security group IDs.

### 4️⃣ Verify Cluster
- Check Terraform outputs:
```bash
terraform output
```
- Use `kubectl` to access your cluster once kubeconfig is set up.

---

## 💣 Destroy Infrastructure
```bash
terraform destroy
```
> This removes all AWS resources created by this project.

---

## 🧱 Module Variables

Example from `env/main.tf`:

```hcl
variable "eks_node_group_template_instance_key_name" {
  default = "jkey"
}

variable "eks_node_group_template_instance_type" {
  default = "t3.small"
}
```

- Update these variables to customize EC2 instances for node groups.

---

## 🧩 Outputs

Terraform produces the following outputs (saved to `eks-output.txt`):

- `eks_cluster_id_out` – EKS Cluster ID  
- `eks_cluster_endpoint_out` – Cluster API endpoint  
- `eks_node_group_ids_out` – Worker node group IDs  
- `eks_security_group_id_out` – Security group ID  

---

## 🧠 Tips

- Keep `terraform.tfstate` files safe; they contain resource mappings.  
- Modular design allows reusing components for multiple environments.  
- Plan before applying to see changes: `terraform plan`.  
- Use `users.txt` to manage multiple EKS users if needed.

---

## 📜 License

Maintained for **DevOps learning and automation**.  
You can reuse and modify it for your own AWS EKS setups.

---

**Author:** Vijay Durai  
**Role:** DevOps & Cloud Engineer ☁️  
**Purpose:** Modular Terraform AWS EKS Automation