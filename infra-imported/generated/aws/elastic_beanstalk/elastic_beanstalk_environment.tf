resource "aws_elastic_beanstalk_environment" "tfer--Bookrentalapp-env" {
  application         = "bookrentalapp"
  name                = "Bookrentalapp-env"
  platform_arn        = "arn:aws:elasticbeanstalk:eu-west-2::platform/Corretto 17 running on 64bit Amazon Linux 2/3.3.2"
  solution_stack_name = "64bit Amazon Linux 2 v3.3.2 running Corretto 17"
  tier                = "WebServer"
  version_label       = "code-pipeline-1664047011285-BuildArtifact-0b26b4f5-1cb5-4fc0-b808-d1c0cb4774a2"
}

resource "aws_elastic_beanstalk_environment" "tfer--env-Backendbookrentalapp" {
  application         = "back-end-book-rental-app"
  name                = "env-Backendbookrentalapp"
  platform_arn        = "arn:aws:elasticbeanstalk:eu-west-2::platform/Corretto 17 running on 64bit Amazon Linux 2/3.4.1"
  solution_stack_name = "64bit Amazon Linux 2 v3.4.1 running Corretto 17"
  tier                = "WebServer"
  version_label       = "code-pipeline-1671053506813-4f1d4cf1107fc3d2947c11eb9e8b0022aec4ce18-6"
}
