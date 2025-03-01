resource "aws_instance" "ubuntu_server" {
    ami = "ami-0c6088f72bda274d7"
    instance_type = "t2.micro"
    key_name = "phpipam"
    tags = {
       Name = "Ubuntu_Instance"
    }
}

output "public_ip" {
    value = aws_instance.ubuntu_server.public_ip
}