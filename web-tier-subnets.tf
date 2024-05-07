resource "aws_subnet" "web-tier-subnet1" {
    vpc_id = aws_vpc.vpc_id
    cidr_block = var.web-tier-cidr1
    availability_zone = var.az-1
    map_public_ip_on_launch = true

    tags = {
        Name = var.web-tier-subnet1
    }

}

resource "aws_subnet" "web-tier-subnet2" {
    vpc_id = aws_vpc.vpc_id
    cidr_block = var.web-tier-cidr2
    availability_zone = var.az-2
    map_public_ip_on_launch = true

    tags = {
        Name = var.web-tier-subnet2
    }
}