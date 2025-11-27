output "ip_address" {
  value = aws_instance.EC2.public_ip
}

output "website_url" {
  value = "http://${aws_instance.EC2.public_dns}"
}