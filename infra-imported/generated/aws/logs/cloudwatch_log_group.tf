resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-codebuild-002F-BookRentalAppBE" {
  name = "/aws/codebuild/BookRentalAppBE"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-codebuild-002F-book-rental-app-react" {
  name = "/aws/codebuild/book-rental-app-react"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-elasticbeanstalk-002F-env-Backendbookrentalapp-002F-var-002F-log-002F-eb-engine-002E-log" {
  name              = "/aws/elasticbeanstalk/env-Backendbookrentalapp/var/log/eb-engine.log"
  retention_in_days = "7"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-elasticbeanstalk-002F-env-Backendbookrentalapp-002F-var-002F-log-002F-eb-hooks-002E-log" {
  name              = "/aws/elasticbeanstalk/env-Backendbookrentalapp/var/log/eb-hooks.log"
  retention_in_days = "7"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-elasticbeanstalk-002F-env-Backendbookrentalapp-002F-var-002F-log-002F-nginx-002F-access-002E-log" {
  name              = "/aws/elasticbeanstalk/env-Backendbookrentalapp/var/log/nginx/access.log"
  retention_in_days = "7"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-elasticbeanstalk-002F-env-Backendbookrentalapp-002F-var-002F-log-002F-nginx-002F-error-002E-log" {
  name              = "/aws/elasticbeanstalk/env-Backendbookrentalapp/var/log/nginx/error.log"
  retention_in_days = "7"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-elasticbeanstalk-002F-env-Backendbookrentalapp-002F-var-002F-log-002F-web-002E-stdout-002E-log" {
  name              = "/aws/elasticbeanstalk/env-Backendbookrentalapp/var/log/web.stdout.log"
  retention_in_days = "7"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-hello" {
  name = "/aws/lambda/hello"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-rds-002F-instance-002F-bookrentalappdb-002F-error" {
  name = "/aws/rds/instance/bookrentalappdb/error"
}
