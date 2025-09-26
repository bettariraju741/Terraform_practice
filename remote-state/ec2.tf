resource "aws_instance" "devops" {
    ami = "ami-00ca32bbc84273381"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow-ssh.id]
      tags = {
    Name = "devops-practice"
  }

  
}
resource "aws_security_group" "allow-ssh" {
    name = "allowSshPort"
    description = "allow the ssh port to connect the server"
    tags = {
    Name = "allowSshPort"
  }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}



