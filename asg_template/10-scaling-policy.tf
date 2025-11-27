resource "aws_autoscaling_policy" "scale_up" {
  name                   = "scale_up_policy"
   autoscaling_group_name = aws_autoscaling_group.asg.name
   estimated_instance_warmup = 60
   policy_type = "TargetTrackingScaling"

    target_tracking_configuration {
      predefined_metric_specification {
         predefined_metric_type = "ASGAverageCPUUtilization"
      }
      target_value = 40.0
    }
}


