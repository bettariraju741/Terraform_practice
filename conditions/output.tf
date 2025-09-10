output "public_ip" {
   value = aws_instance.devops.public_ip
   sensitive = false
   description = "this is the public ip of instance"
}
