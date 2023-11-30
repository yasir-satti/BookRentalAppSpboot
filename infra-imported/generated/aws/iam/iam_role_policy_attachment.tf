resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-eu-west-2-BookRentalApp_AWSCodePipelineServiceRole-eu-west-2-BookRentalApp" {
  policy_arn = "arn:aws:iam::281408736314:policy/service-role/AWSCodePipelineServiceRole-eu-west-2-BookRentalApp"
  role       = "AWSCodePipelineServiceRole-eu-west-2-BookRentalApp"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-eu-west-2-back-end-bookRentalApp_AWSCodePipelineServiceRole-eu-west-2-back-end-bookRentalApp" {
  policy_arn = "arn:aws:iam::281408736314:policy/service-role/AWSCodePipelineServiceRole-eu-west-2-back-end-bookRentalApp"
  role       = "AWSCodePipelineServiceRole-eu-west-2-back-end-bookRentalApp"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-eu-west-2-front-end-bookrentalapp_AWSCodePipelineServiceRole-eu-west-2-front-end-bookrentalapp" {
  policy_arn = "arn:aws:iam::281408736314:policy/service-role/AWSCodePipelineServiceRole-eu-west-2-front-end-bookrentalapp"
  role       = "AWSCodePipelineServiceRole-eu-west-2-front-end-bookrentalapp"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAPIGateway_APIGatewayServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
  role       = "AWSServiceRoleForAPIGateway"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonCognitoIdpEmailService_AmazonCognitoIdpEmailServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonCognitoIdpEmailServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonCognitoIdpEmailService"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAutoScaling_AutoScalingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"
  role       = "AWSServiceRoleForAutoScaling"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForElasticBeanstalkManagedUpdates_AWSElasticBeanstalkManagedUpdatesServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticBeanstalkManagedUpdatesServiceRolePolicy"
  role       = "AWSServiceRoleForElasticBeanstalkManagedUpdates"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForElasticLoadBalancing_AWSElasticLoadBalancingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"
  role       = "AWSServiceRoleForElasticLoadBalancing"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForRDS_AmazonRDSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"
  role       = "AWSServiceRoleForRDS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-elasticbeanstalk-ec2-role_AWSElasticBeanstalkMulticontainerDocker" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkMulticontainerDocker"
  role       = "aws-elasticbeanstalk-ec2-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-elasticbeanstalk-ec2-role_AWSElasticBeanstalkWebTier" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier"
  role       = "aws-elasticbeanstalk-ec2-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-elasticbeanstalk-ec2-role_AWSElasticBeanstalkWorkerTier" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWorkerTier"
  role       = "aws-elasticbeanstalk-ec2-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-elasticbeanstalk-service-role_AWSElasticBeanstalkEnhancedHealth" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkEnhancedHealth"
  role       = "aws-elasticbeanstalk-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-elasticbeanstalk-service-role_AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy"
  role       = "aws-elasticbeanstalk-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--back-end-pipeline-role-bookrentalapp_CodeBuildBasePolicy-BookRentalAppBE-eu-west-2" {
  policy_arn = "arn:aws:iam::281408736314:policy/service-role/CodeBuildBasePolicy-BookRentalAppBE-eu-west-2"
  role       = "back-end-pipeline-role-bookrentalapp"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-book-rental-app-react-service-role_CodeBuildBasePolicy-book-rental-app-react-eu-west-2" {
  policy_arn = "arn:aws:iam::281408736314:policy/service-role/CodeBuildBasePolicy-book-rental-app-react-eu-west-2"
  role       = "codebuild-book-rental-app-react-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--hello-role-26cuagnf_AWSLambdaBasicExecutionRole-294c1b82-6c59-4a04-93de-14d1727df15a" {
  policy_arn = "arn:aws:iam::281408736314:policy/service-role/AWSLambdaBasicExecutionRole-294c1b82-6c59-4a04-93de-14d1727df15a"
  role       = "hello-role-26cuagnf"
}
