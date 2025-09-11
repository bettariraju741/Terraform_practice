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
variable "zone_id" {
    type = string
    default = "Z04305553A8BR8GAKNRT5"
  
}
variable "domain_name" {
    default = "rajdevops.site"
  
}