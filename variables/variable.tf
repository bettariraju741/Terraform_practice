variable "ami_id" {
    type = string
    default = "ami-00ca32bbc84273381"
    description = "this AMI of amazon linux 2023"
  
}
variable "tags" {
    type = map #optional
    default = {
        Name = "backend"
        Project = "expense"
        Environment = "Dev"
        Terrform = "true"
    }
  
}
variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "sg_name" {
    default = "allowSshPort"
  
}
variable "sg_description" {
    description = "allow port 22 to access the ssh"
  
}
variable "from_port" {
    default = 22
    type = number
  
}
variable "to_port" {
    default = 22
    type = number
  
}
variable "protocol" {
    default = "tcp"
  
}
variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]

}