resource "aws_lb_target_group" "tfer--awseb-AWSEB-1K3UOLWVS91TS" {
  deregistration_delay = "20"

  health_check {
    enabled             = "true"
    healthy_threshold   = "3"
    interval            = "15"
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "5"
  }

  load_balancing_algorithm_type = "round_robin"
  name                          = "awseb-AWSEB-1K3UOLWVS91TS"
  port                          = "80"
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  slow_start                    = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    Name                                = "env-Backendbookrentalapp"
    "elasticbeanstalk:environment-id"   = "e-mct3qshahg"
    "elasticbeanstalk:environment-name" = "env-Backendbookrentalapp"
  }

  tags_all = {
    Name                                = "env-Backendbookrentalapp"
    "elasticbeanstalk:environment-id"   = "e-mct3qshahg"
    "elasticbeanstalk:environment-name" = "env-Backendbookrentalapp"
  }

  target_type = "instance"
  vpc_id      = "vpc-020aa58ff51971cb1"
}
