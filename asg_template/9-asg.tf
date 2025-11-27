resource "aws_autoscaling_group" "asg" {
  vpc_zone_identifier = [aws_subnet.private_a.id
  ,aws_subnet.private_b.id,
  aws_subnet.private_c.id]
  max_size            = 6
  min_size            = 3
  health_check_type = "ELB"
  target_group_arns = [aws_lb_target_group.target_group.arn] 
  launch_template {
    id = aws_launch_template.asg-LT01.id
    version = "$Latest"
  }
 
    tag {
    key                 = "Name"
    value               = "asg-instance"
    propagate_at_launch = true
    }
    force_delete = true
  }

