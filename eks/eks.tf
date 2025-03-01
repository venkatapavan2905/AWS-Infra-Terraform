module "eks" {
    source = "terraform-aws-modules/eks/aws"
    version = "20.0.0"

    cluster_name = "eks-terraform"
    cluster_version = "1.27"
    subnet_ids = module.vpc.private_subnets
    vpc_id = module.vpc.vpc_id

    enable_irsa = true

    eks_managed_node_groups = {
        default = {
            min_size = 1
            max_size = 2
            desired_size = 2
            instance_type = ["t3.medium"]
        }
    }
  
}