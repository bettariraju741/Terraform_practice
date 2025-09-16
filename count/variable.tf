variable "common_tags" {
    type = map
    default = {
        Environment = "Dev"
        Project = "Expense"
        Terraform = "true"
    }
}

variable "instance_names" {
    type = list(string)
    default = [ "mysql", "backend", "frnotend" ]
  
}