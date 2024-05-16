module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.8.4"
  cluster_name    = var.cluster_name
  cluster_version = var.kubernetes_version
  subnet_ids      = module.vpc.private_subnets

  enable_irsa = true

  tags = {
    cluster = "demo"
  }

  vpc_id = module.vpc.vpc_id

  eks_managed_node_group_defaults = {
    ami_type               = "${var.ami_type}"
    instance_types         = ["t2.micro"]
    vpc_security_group_ids = ["${aws_security_group.all_worker_node_sg.id}"]
  }

  eks_managed_node_groups = {

    node_group = {
      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }
}