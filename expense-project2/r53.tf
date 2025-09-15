resource "aws_route53_record" "Expense" {
    zone_id = var.zone_id
    count   = length(var.instance_names)
    name    = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = var.instance_names[count.index] == "frontend" ? [aws_instance.devops[count.index].public_ip] : [aws_instance.devops[count.index].private_ip]
    allow_overwrite = true
  
}