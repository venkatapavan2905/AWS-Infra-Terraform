resource "aws_security_group" "eks_sg" {
    name = "eks-cluster-sg"
    vpc_id = module.vpc.vpc_id
    description = "Allow all cluster traffic"

    ingress {
        from_port = 0
        to_port = 65535
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}