resource "aws_security_group" "tfer--awseb-e-k3gyewp8fx-stack-AWSEBLoadBalancerSecurityGroup-41KELURDMM4J_sg-08bbaac8740a17196" {
  description = "Elastic Beanstalk created security group used when no ELB security groups are specified during ELB creation"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "awseb-e-k3gyewp8fx-stack-AWSEBLoadBalancerSecurityGroup-41KELURDMM4J"

  tags = {
    Name                                = "Bookrentalapp-env"
    "elasticbeanstalk:environment-id"   = "e-k3gyewp8fx"
    "elasticbeanstalk:environment-name" = "Bookrentalapp-env"
  }

  tags_all = {
    Name                                = "Bookrentalapp-env"
    "elasticbeanstalk:environment-id"   = "e-k3gyewp8fx"
    "elasticbeanstalk:environment-name" = "Bookrentalapp-env"
  }

  vpc_id = "vpc-020aa58ff51971cb1"
}

resource "aws_security_group" "tfer--awseb-e-k3gyewp8fx-stack-AWSEBRDSDBSecurityGroup-PYRSZUGASAKW_sg-0e50a688b443d85ea" {
  description = "Enable database access to Beanstalk application"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "0"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--awseb-e-k3gyewp8fx-stack-AWSEBSecurityGroup-UT0BVAROK1TH_sg-01b700e4aa2366115_id}"]
    self            = "false"
    to_port         = "65535"
  }

  name = "awseb-e-k3gyewp8fx-stack-AWSEBRDSDBSecurityGroup-PYRSZUGASAKW"

  tags = {
    Name                                = "Bookrentalapp-env"
    "elasticbeanstalk:environment-id"   = "e-k3gyewp8fx"
    "elasticbeanstalk:environment-name" = "Bookrentalapp-env"
  }

  tags_all = {
    Name                                = "Bookrentalapp-env"
    "elasticbeanstalk:environment-id"   = "e-k3gyewp8fx"
    "elasticbeanstalk:environment-name" = "Bookrentalapp-env"
  }

  vpc_id = "vpc-020aa58ff51971cb1"
}

resource "aws_security_group" "tfer--awseb-e-k3gyewp8fx-stack-AWSEBSecurityGroup-UT0BVAROK1TH_sg-01b700e4aa2366115" {
  description = "SecurityGroup for ElasticBeanstalk environment."

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "80"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--awseb-e-k3gyewp8fx-stack-AWSEBLoadBalancerSecurityGroup-41KELURDMM4J_sg-08bbaac8740a17196_id}"]
    self            = "false"
    to_port         = "80"
  }

  name = "awseb-e-k3gyewp8fx-stack-AWSEBSecurityGroup-UT0BVAROK1TH"

  tags = {
    Name                                = "Bookrentalapp-env"
    "elasticbeanstalk:environment-id"   = "e-k3gyewp8fx"
    "elasticbeanstalk:environment-name" = "Bookrentalapp-env"
  }

  tags_all = {
    Name                                = "Bookrentalapp-env"
    "elasticbeanstalk:environment-id"   = "e-k3gyewp8fx"
    "elasticbeanstalk:environment-name" = "Bookrentalapp-env"
  }

  vpc_id = "vpc-020aa58ff51971cb1"
}

resource "aws_security_group" "tfer--awseb-e-mct3qshahg-stack-AWSEBLoadBalancerSecurityGroup-13A8Y4FWDHIK3_sg-0237ddfe952b5644a" {
  description = "Elastic Beanstalk created security group used when no ELB security groups are specified during ELB creation"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "awseb-e-mct3qshahg-stack-AWSEBLoadBalancerSecurityGroup-13A8Y4FWDHIK3"

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

  vpc_id = "vpc-020aa58ff51971cb1"
}

resource "aws_security_group" "tfer--awseb-e-mct3qshahg-stack-AWSEBSecurityGroup-1TQZKUIPBO2JN_sg-0b2bce3189d09ebce" {
  description = "SecurityGroup for ElasticBeanstalk environment."

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "80"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--awseb-e-mct3qshahg-stack-AWSEBLoadBalancerSecurityGroup-13A8Y4FWDHIK3_sg-0237ddfe952b5644a_id}"]
    self            = "false"
    to_port         = "80"
  }

  name = "awseb-e-mct3qshahg-stack-AWSEBSecurityGroup-1TQZKUIPBO2JN"

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

  vpc_id = "vpc-020aa58ff51971cb1"
}

resource "aws_security_group" "tfer--bookrentalappVPCsecgrp_sg-087df58013ef1105f" {
  description = "Created by RDS management console"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name   = "bookrentalappVPCsecgrp"
  vpc_id = "vpc-03be0debce581a4fc"
}

resource "aws_security_group" "tfer--default_sg-064ceadb2fdb1b58f" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-020aa58ff51971cb1"
}

resource "aws_security_group" "tfer--default_sg-0f526d6222dbea0d3" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-03be0debce581a4fc"
}
