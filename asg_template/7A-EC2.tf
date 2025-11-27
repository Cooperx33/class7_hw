resource "aws_instance" "EC2" {
ami = "ami-06d455b8b50b0de4d"
associate_public_ip_address =  true
 instance_type = "t3.micro"
    subnet_id = aws_subnet.public_a.id
 
    security_groups = [aws_security_group.web_server.id]

    user_data = file("user_data.sh")

    tags = {
      "Name" = "EC2"
    }
}

