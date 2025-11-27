# Web Server Security Group
resource "aws_security_group" "web_lb" {
  name        = "web-alb-sg"
  description = "Allow HTTP and SSH for web server"
  vpc_id      = aws_vpc.salsa_sun.id

  tags = {
    Name = "web-alb-sg"
    Tier = "web"
  }


}

resource "aws_vpc_security_group_ingress_rule" "web_lb_http" {
  security_group_id = aws_security_group.web_lb.id
  description       = "HTTP from internet"
  # if traffic from LB then can this be improved?
  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}




resource "aws_vpc_security_group_egress_rule" "web_lb_egress" {
  security_group_id = aws_security_group.web_lb.id
  description       = "Allow all outbound traffic"
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}




