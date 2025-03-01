module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    version = "5.0.0"
     
    name = "eks-vpc"
    cidr = "10.0.0.0/16"

    azs = ["ap-south-1a", "ap-south-1b"]
    public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
    private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]

    enable_nat_gateway = true
    enable_dns_hostnames = true
}