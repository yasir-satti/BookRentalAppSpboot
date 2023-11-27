resource "aws_autoscaling_group" "tfer--awseb-e-mct3qshahg-stack-AWSEBAutoScalingGroup-LZ7EDEXIER9R" {
  availability_zones        = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  capacity_rebalance        = "false"
  default_cooldown          = "360"
  default_instance_warmup   = "0"
  desired_capacity          = "1"
  force_delete              = "false"
  health_check_grace_period = "0"
  health_check_type         = "EC2"

  launch_template {
    id      = "lt-0897d46c93dd3ea29"
    name    = "AWSEBEC2LaunchTemplate_NKXcYsQe9RJx"
    version = "2"
  }

  max_instance_lifetime   = "0"
  max_size                = "4"
  metrics_granularity     = "1Minute"
  min_size                = "1"
  name                    = "awseb-e-mct3qshahg-stack-AWSEBAutoScalingGroup-LZ7EDEXIER9R"
  protect_from_scale_in   = "false"
  service_linked_role_arn = "arn:aws:iam::281408736314:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"

  tag {
    key                 = "Name"
    propagate_at_launch = "true"
    value               = "env-Backendbookrentalapp"
  }

  tag {
    key                 = "elasticbeanstalk:environment-id"
    propagate_at_launch = "true"
    value               = "e-mct3qshahg"
  }

  tag {
    key                 = "elasticbeanstalk:environment-name"
    propagate_at_launch = "true"
    value               = "env-Backendbookrentalapp"
  }

  target_group_arns         = ["arn:aws:elasticloadbalancing:eu-west-2:281408736314:targetgroup/awseb-AWSEB-1K3UOLWVS91TS/28423754fc52ccc8"]
  wait_for_capacity_timeout = "10m"
}
