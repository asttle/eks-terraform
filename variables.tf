variable "aws_region" {
  default = "us-west-2"
}

variable "kubernetes_version" {
  default = "1.28"
  description = "value of kubernetes version"
}

variable "ami_type" {
  default = "AL2_x86_64"
    description = "value of ami type"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "deafult vpc cidr range"
}

variable "private_subnets" {
  default = ["10.0.1.0/24","10.0.2.0/24"]
  description = "private subnets cidr range"
}

variable "public_subnets" {
  default = ["10.0.3.0/24","10.0.4.0/24"]
  description = "public subnets cidr range"
}

variable "cluster_name" {
  default = "eks-demo"
}