resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-eu-west-2-003A-281408736314-003A-listener-002F-app-002F-awseb-AWSEB-3T6OL9ZNCH4P-002F-8526f88d832b372a-002F-3820ca842e5f21eb" {
  default_action {
    target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:281408736314:targetgroup/awseb-AWSEB-1K3UOLWVS91TS/28423754fc52ccc8"
    type             = "forward"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--awseb-AWSEB-3T6OL9ZNCH4P_id}"
  port              = "80"
  protocol          = "HTTP"
}
