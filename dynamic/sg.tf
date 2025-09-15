resource "aws_security_group" "devops" {
    name = "dynamic_demo"
    description = "allow port no 22 to access the system"

    # usually we allow everything in egress
        egress {
            from_port = 0
            to_port  = 0
            protocol = "-1"
            cidr_blocks = ["0.0.0.0/0"]

        }
     # terraform will give us a variable with block name
       dynamic "ingress" {
        for_each = var.ingress_rules
        content {
          from_port = ingress.value["from_port"]
          to_port = ingress.value["to_port"]
          protocol = ingress.value["protocol"]
          cidr_blocks = ingress.value.cidr_blocks
        }
       }           
        tags = {

           Name = "allow_sshh"
        }
}

