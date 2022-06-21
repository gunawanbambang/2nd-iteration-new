output "alb_dns_name" {
  value = aws_lb.example.dns_name
  description = "dns name of the ALB"
}


/*
output "public_ip" {
  description            = "public ip of the webserver"
  value                  = aws_instance.example.public_ip
}
*/