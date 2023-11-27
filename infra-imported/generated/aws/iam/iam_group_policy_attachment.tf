resource "aws_iam_group_policy_attachment" "tfer--developers2_AWSCertificateManagerFullAccess" {
  group      = "developers2"
  policy_arn = "arn:aws:iam::aws:policy/AWSCertificateManagerFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers2_AWSCloudShellFullAccess" {
  group      = "developers2"
  policy_arn = "arn:aws:iam::aws:policy/AWSCloudShellFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers2_AWSCodeStarFullAccess" {
  group      = "developers2"
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeStarFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers2_AmazonAPIGatewayAdministrator" {
  group      = "developers2"
  policy_arn = "arn:aws:iam::aws:policy/AmazonAPIGatewayAdministrator"
}

resource "aws_iam_group_policy_attachment" "tfer--developers2_AmazonAPIGatewayInvokeFullAccess" {
  group      = "developers2"
  policy_arn = "arn:aws:iam::aws:policy/AmazonAPIGatewayInvokeFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers2_AmazonAPIGatewayPushToCloudWatchLogs" {
  group      = "developers2"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonAPIGatewayPushToCloudWatchLogs"
}

resource "aws_iam_group_policy_attachment" "tfer--developers2_Billing" {
  group      = "developers2"
  policy_arn = "arn:aws:iam::aws:policy/job-function/Billing"
}

resource "aws_iam_group_policy_attachment" "tfer--developers2_CloudFrontFullAccess" {
  group      = "developers2"
  policy_arn = "arn:aws:iam::aws:policy/CloudFrontFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers2_CloudWatchFullAccess" {
  group      = "developers2"
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers2_CloudWatchLogsFullAccess" {
  group      = "developers2"
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers3_AWSBillingReadOnlyAccess" {
  group      = "developers3"
  policy_arn = "arn:aws:iam::aws:policy/AWSBillingReadOnlyAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers3_AmazonCognitoPowerUser" {
  group      = "developers3"
  policy_arn = "arn:aws:iam::aws:policy/AmazonCognitoPowerUser"
}

resource "aws_iam_group_policy_attachment" "tfer--developers3_AmazonCognitoReadOnly" {
  group      = "developers3"
  policy_arn = "arn:aws:iam::aws:policy/AmazonCognitoReadOnly"
}

resource "aws_iam_group_policy_attachment" "tfer--developers3_AmazonDynamoDBFullAccess" {
  group      = "developers3"
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers3_AmazonEC2FullAccess" {
  group      = "developers3"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers3_AmazonRoute53FullAccess" {
  group      = "developers3"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRoute53FullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers3_AmazonSESFullAccess" {
  group      = "developers3"
  policy_arn = "arn:aws:iam::aws:policy/AmazonSESFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers3_EC2InstanceConnect" {
  group      = "developers3"
  policy_arn = "arn:aws:iam::aws:policy/EC2InstanceConnect"
}

resource "aws_iam_group_policy_attachment" "tfer--developers_AWSCodeBuildDeveloperAccess" {
  group      = "developers"
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeBuildDeveloperAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers_AWSCodePipelineFullAccess" {
  group      = "developers"
  policy_arn = "arn:aws:iam::aws:policy/AWSCodePipelineFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers_AWSCodeStarFullAccess" {
  group      = "developers"
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeStarFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers_AdministratorAccess-AWSElasticBeanstalk" {
  group      = "developers"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-AWSElasticBeanstalk"
}

resource "aws_iam_group_policy_attachment" "tfer--developers_AmazonRDSFullAccess" {
  group      = "developers"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers_AmazonS3FullAccess" {
  group      = "developers"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers_IAMFullAccess" {
  group      = "developers"
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--developers_SecretsManagerReadWrite" {
  group      = "developers"
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
}
