resource "aws_cloudwatch_metric_alarm" "tfer--awseb-e-mct3qshahg-stack-AWSEBCloudwatchAlarmHigh-1WB758LLDV6LL" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:eu-west-2:281408736314:scalingPolicy:4878b703-afba-4f42-8692-4c68c24b8444:autoScalingGroupName/awseb-e-mct3qshahg-stack-AWSEBAutoScalingGroup-LZ7EDEXIER9R:policyName/awseb-e-mct3qshahg-stack-AWSEBAutoScalingScaleUpPolicy-mknQHN7ZE8Zq"]
  alarm_description   = "ElasticBeanstalk Default Scale Up alarm"
  alarm_name          = "awseb-e-mct3qshahg-stack-AWSEBCloudwatchAlarmHigh-1WB758LLDV6LL"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    AutoScalingGroupName = "awseb-e-mct3qshahg-stack-AWSEBAutoScalingGroup-LZ7EDEXIER9R"
  }

  evaluation_periods = "1"
  metric_name        = "NetworkOut"
  namespace          = "AWS/EC2"
  period             = "300"
  statistic          = "Average"
  threshold          = "6000000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--awseb-e-mct3qshahg-stack-AWSEBCloudwatchAlarmLow-THD74839D0T2" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:eu-west-2:281408736314:scalingPolicy:9b106332-525c-4bc1-b35f-c8147b198601:autoScalingGroupName/awseb-e-mct3qshahg-stack-AWSEBAutoScalingGroup-LZ7EDEXIER9R:policyName/awseb-e-mct3qshahg-stack-AWSEBAutoScalingScaleDownPolicy-bbhKl7aKaxDH"]
  alarm_description   = "ElasticBeanstalk Default Scale Down alarm"
  alarm_name          = "awseb-e-mct3qshahg-stack-AWSEBCloudwatchAlarmLow-THD74839D0T2"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    AutoScalingGroupName = "awseb-e-mct3qshahg-stack-AWSEBAutoScalingGroup-LZ7EDEXIER9R"
  }

  evaluation_periods = "1"
  metric_name        = "NetworkOut"
  namespace          = "AWS/EC2"
  period             = "300"
  statistic          = "Average"
  threshold          = "2000000"
  treat_missing_data = "missing"
}
