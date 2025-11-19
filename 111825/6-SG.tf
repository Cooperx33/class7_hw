resource "aws_security_group" "web_server" {
  name        = "allow_tls"
  description = "Allow HTTP and SSH for web server"
  vpc_id      = aws_vpc.salsa_sun.id

  tags = {
    Tier = "web-server-sg"
    Name = "web server"
  }
}

resource "aws_vpc_security_group_ingress_rule" "HTTP" {
  security_group_id            = aws_security_group.web_server.id
  referenced_security_group_id = aws_security_group.web_lb.id
  description = "Allow HTTP traffic from load balancer"
  from_port                    = 80
  ip_protocol                  = "tcp"
  to_port                      = 80
}

resource "aws_vpc_security_group_ingress_rule" "SSH" {
  security_group_id = aws_security_group.web_server.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "tcp" # semantically equivalent to all ports
  from_port         = 22
  to_port           = 22
}

resource "aws_security_group" "lb" {
  name        = "load-balancer"
  description = "lb for web server"
  vpc_id      = aws_vpc.salsa_sun.id
  tags = {
    Name = "lb"
  }
}

resource "aws_vpc_security_group_egress_rule" "lb" {
  security_group_id = aws_security_group.lb.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
  description = "Allow all outbound traffic"
}