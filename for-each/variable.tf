variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    } 
  
}
variable "zone_id" {
    type = string
    default = "Z04305553A8BR8GAKNRT5"
  
}
variable "domain_name" {
    default = "rajdevops.site"
  
}