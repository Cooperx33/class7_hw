data "aws_ami" "amzn-linux-2023-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}


resource "aws_launch_template" "asg-LT01" {
  name_prefix   = "asg-LT01"
  image_id      = data.aws_ami.amzn-linux-2023-ami.id
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.web_server.id]

  user_data = filebase64("./user_data.sh")

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name    = "asg-instance"
      Service = "Auto Scaling"
      Owner   = "coop"
      Planet  = ""
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}