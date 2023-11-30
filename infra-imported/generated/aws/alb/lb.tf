resource "aws_lb" "tfer--awseb-AWSEB-3T6OL9ZNCH4P" {
  access_logs {
    bucket  = "elasticbeanstalk-eu-west-2-281408736314"
    enabled = "true"
    prefix  = "LB_logs"
  }

  desync_mitigation_mode           = "defensive"
  drop_invalid_header_fields       = "false"
  enable_cross_zone_load_balancing = "true"
  enable_deletion_protection       = "false"
  enable_http2                     = "true"
  enable_waf_fail_open             = "false"
  idle_timeout                     = "60"
  internal                         = "false"
  ip_address_type                  = "ipv4"
  load_balancer_type               = "application"
  name                             = "awseb-AWSEB-3T6OL9ZNCH4P"
  preserve_host_header             = "false"
  security_groups                  = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--awseb-e-mct3qshahg-stack-AWSEBLoadBalancerSecurityGroup-13A8Y4FWDHIK3_sg-0237ddfe952b5644a_id}"]

  subnet_mapping {
    subnet_id = "subnet-015a2e033d0c2f3eb"
  }

  subnet_mapping {
    subnet_id = "subnet-038f9520228d8faa4"
  }

  subnet_mapping {
    subnet_id = "subnet-0b49672f2977ea149"
  }

  subnets = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-015a2e033d0c2f3eb_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-038f9520228d8faa4_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b49672f2977ea149_id}"]

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
}
