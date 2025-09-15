locals {
  domain_name = "rajdevops.site"
  zone_id = "Z04305553A8BR8GAKNRT5"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
}