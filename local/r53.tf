resource "aws_route53_record" "Expense" {
    zone_id = local.zone_id
    count   = length(var.instance_names)
    name    = var.instance_names[count.index] == "frontend" ? local.domain_name : "${var.instance_names[count.index]}.${local.domain_name}"
    type    = "A"
    ttl     = 1
    records = var.instance_names[count.index] == "frontend" ? [aws_instance.devops[count.index].public_ip] : [aws_instance.devops[count.index].private_ip]
    allow_overwrite = true
  
}