resource "aws_iam_policy" "tfer--AWSCodePipelineServiceRole-eu-west-2-BookRentalApp" {
  description = "Policy used in trust relationship with CodePipeline"
  name        = "AWSCodePipelineServiceRole-eu-west-2-BookRentalApp"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com",
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetRepository",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codestar-connections:UseConnection"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticbeanstalk:*",
        "ec2:*",
        "elasticloadbalancing:*",
        "autoscaling:*",
        "cloudwatch:*",
        "s3:*",
        "sns:*",
        "cloudformation:*",
        "rds:*",
        "sqs:*",
        "ecs:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "opsworks:CreateDeployment",
        "opsworks:DescribeApps",
        "opsworks:DescribeCommands",
        "opsworks:DescribeDeployments",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:UpdateApp",
        "opsworks:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "devicefarm:ListProjects",
        "devicefarm:ListDevicePools",
        "devicefarm:GetRun",
        "devicefarm:GetUpload",
        "devicefarm:CreateUpload",
        "devicefarm:ScheduleRun"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "servicecatalog:ListProvisioningArtifacts",
        "servicecatalog:CreateProvisioningArtifact",
        "servicecatalog:DescribeProvisioningArtifact",
        "servicecatalog:DeleteProvisioningArtifact",
        "servicecatalog:UpdateProduct"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:DescribeImages"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "appconfig:StartDeployment",
        "appconfig:StopDeployment",
        "appconfig:GetDeployment"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSCodePipelineServiceRole-eu-west-2-back-end-bookRentalApp" {
  description = "Policy used in trust relationship with CodePipeline"
  name        = "AWSCodePipelineServiceRole-eu-west-2-back-end-bookRentalApp"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com",
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetRepository",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codestar-connections:UseConnection"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticbeanstalk:*",
        "ec2:*",
        "elasticloadbalancing:*",
        "autoscaling:*",
        "cloudwatch:*",
        "s3:*",
        "sns:*",
        "cloudformation:*",
        "rds:*",
        "sqs:*",
        "ecs:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "opsworks:CreateDeployment",
        "opsworks:DescribeApps",
        "opsworks:DescribeCommands",
        "opsworks:DescribeDeployments",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:UpdateApp",
        "opsworks:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "devicefarm:ListProjects",
        "devicefarm:ListDevicePools",
        "devicefarm:GetRun",
        "devicefarm:GetUpload",
        "devicefarm:CreateUpload",
        "devicefarm:ScheduleRun"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "servicecatalog:ListProvisioningArtifacts",
        "servicecatalog:CreateProvisioningArtifact",
        "servicecatalog:DescribeProvisioningArtifact",
        "servicecatalog:DeleteProvisioningArtifact",
        "servicecatalog:UpdateProduct"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:DescribeImages"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "appconfig:StartDeployment",
        "appconfig:StopDeployment",
        "appconfig:GetDeployment"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSCodePipelineServiceRole-eu-west-2-front-end-bookrentalapp" {
  description = "Policy used in trust relationship with CodePipeline"
  name        = "AWSCodePipelineServiceRole-eu-west-2-front-end-bookrentalapp"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com",
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetRepository",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codestar-connections:UseConnection"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticbeanstalk:*",
        "ec2:*",
        "elasticloadbalancing:*",
        "autoscaling:*",
        "cloudwatch:*",
        "s3:*",
        "sns:*",
        "cloudformation:*",
        "rds:*",
        "sqs:*",
        "ecs:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "opsworks:CreateDeployment",
        "opsworks:DescribeApps",
        "opsworks:DescribeCommands",
        "opsworks:DescribeDeployments",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:UpdateApp",
        "opsworks:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "devicefarm:ListProjects",
        "devicefarm:ListDevicePools",
        "devicefarm:GetRun",
        "devicefarm:GetUpload",
        "devicefarm:CreateUpload",
        "devicefarm:ScheduleRun"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "servicecatalog:ListProvisioningArtifacts",
        "servicecatalog:CreateProvisioningArtifact",
        "servicecatalog:DescribeProvisioningArtifact",
        "servicecatalog:DeleteProvisioningArtifact",
        "servicecatalog:UpdateProduct"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:DescribeImages"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "appconfig:StartDeployment",
        "appconfig:StopDeployment",
        "appconfig:GetDeployment"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-294c1b82-6c59-4a04-93de-14d1727df15a" {
  name = "AWSLambdaBasicExecutionRole-294c1b82-6c59-4a04-93de-14d1727df15a"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-west-2:281408736314:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-west-2:281408736314:log-group:/aws/lambda/hello:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-BookRentalAppBE-eu-west-2" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-BookRentalAppBE-eu-west-2"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-west-2:281408736314:log-group:/aws/codebuild/BookRentalAppBE",
        "arn:aws:logs:eu-west-2:281408736314:log-group:/aws/codebuild/BookRentalAppBE:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-eu-west-2-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:eu-west-2:281408736314:report-group/BookRentalAppBE-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-book-rental-app-react-eu-west-2" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-book-rental-app-react-eu-west-2"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-west-2:281408736314:log-group:/aws/codebuild/book-rental-app-react",
        "arn:aws:logs:eu-west-2:281408736314:log-group:/aws/codebuild/book-rental-app-react:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-eu-west-2-*"
      ]
    },
    {
      "Action": [
        "codecommit:GitPull"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codecommit:eu-west-2:281408736314:book-rental-app-react"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::bookrentalapp",
        "arn:aws:s3:::bookrentalapp/*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:eu-west-2:281408736314:report-group/book-rental-app-react-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--customPlicyCloudWatch" {
  name = "customPlicyCloudWatch"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:PutDashboard",
        "cloudwatch:PutMetricData",
        "cloudwatch:DeleteAlarms",
        "cloudwatch:GetMetricData",
        "cloudwatch:DeleteInsightRules",
        "cloudwatch:DeleteAnomalyDetector",
        "cloudwatch:StartMetricStreams",
        "cloudwatch:DescribeAnomalyDetectors",
        "cloudwatch:DeleteDashboards",
        "cloudwatch:DescribeAlarmHistory",
        "cloudwatch:StopMetricStreams",
        "cloudwatch:DisableAlarmActions",
        "cloudwatch:DescribeAlarmsForMetric",
        "cloudwatch:DeleteMetricStream",
        "cloudwatch:SetAlarmState",
        "cloudwatch:PutAnomalyDetector",
        "cloudwatch:GetMetricWidgetImage",
        "cloudwatch:DescribeInsightRules",
        "cloudwatch:GetDashboard",
        "cloudwatch:GetInsightRuleReport",
        "cloudwatch:DisableInsightRules",
        "cloudwatch:EnableInsightRules",
        "cloudwatch:GetMetricStatistics",
        "cloudwatch:PutCompositeAlarm",
        "cloudwatch:PutMetricStream",
        "cloudwatch:PutInsightRule",
        "cloudwatch:PutMetricAlarm",
        "cloudwatch:EnableAlarmActions",
        "cloudwatch:DescribeAlarms",
        "cloudwatch:GetMetricStream"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  tags = {
    custom-policy = "cloudWatch"
  }

  tags_all = {
    custom-policy = "cloudWatch"
  }
}

resource "aws_iam_policy" "tfer--customPolicyCloudFront" {
  name = "customPolicyCloudFront"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudfront:CreatePublicKey",
        "cloudfront:CreateOriginRequestPolicy",
        "cloudfront:ListFieldLevelEncryptionConfigs",
        "cloudfront:CreateStreamingDistributionWithTags",
        "cloudfront:GetMonitoringSubscription",
        "cloudfront:CreateFunction",
        "cloudfront:DeleteResponseHeadersPolicy",
        "cloudfront:CreateInvalidation",
        "cloudfront:CreateCachePolicy",
        "cloudfront:GetDistribution",
        "cloudfront:UpdateResponseHeadersPolicy",
        "cloudfront:ListKeyGroups",
        "cloudfront:GetStreamingDistribution",
        "cloudfront:UpdateFunction",
        "cloudfront:GetKeyGroup",
        "cloudfront:GetFieldLevelEncryption",
        "cloudfront:UpdateFieldLevelEncryptionProfile",
        "cloudfront:GetDistributionConfig",
        "cloudfront:GetKeyGroupConfig",
        "cloudfront:GetFieldLevelEncryptionProfile",
        "cloudfront:GetFieldLevelEncryptionConfig",
        "cloudfront:GetCloudFrontOriginAccessIdentityConfig",
        "cloudfront:ListResponseHeadersPolicies",
        "cloudfront:ListDistributionsByCachePolicyId",
        "cloudfront:GetCachePolicyConfig",
        "cloudfront:UpdatePublicKey",
        "cloudfront:GetResponseHeadersPolicy",
        "cloudfront:UpdateOriginRequestPolicy",
        "cloudfront:GetPublicKey",
        "cloudfront:UpdateRealtimeLogConfig",
        "cloudfront:CreateKeyGroup",
        "cloudfront:DescribeFunction",
        "cloudfront:GetRealtimeLogConfig",
        "cloudfront:ListTagsForResource",
        "cloudfront:ListInvalidations",
        "cloudfront:DeleteStreamingDistribution",
        "cloudfront:DeleteFunction",
        "cloudfront:ListDistributionsByWebACLId",
        "cloudfront:GetFieldLevelEncryptionProfileConfig",
        "cloudfront:DeleteMonitoringSubscription",
        "cloudfront:DeleteRealtimeLogConfig",
        "cloudfront:DeleteFieldLevelEncryptionConfig",
        "cloudfront:GetFunction",
        "cloudfront:UpdateKeyGroup",
        "cloudfront:ListCloudFrontOriginAccessIdentities",
        "cloudfront:ListFunctions",
        "cloudfront:GetPublicKeyConfig",
        "cloudfront:DeleteCloudFrontOriginAccessIdentity",
        "cloudfront:CreateFieldLevelEncryptionProfile",
        "cloudfront:TestFunction",
        "cloudfront:DeleteFieldLevelEncryptionProfile",
        "cloudfront:UpdateFieldLevelEncryptionConfig",
        "cloudfront:ListOriginRequestPolicies",
        "cloudfront:DeletePublicKey",
        "cloudfront:CreateCloudFrontOriginAccessIdentity",
        "cloudfront:UpdateCachePolicy",
        "cloudfront:ListDistributionsByRealtimeLogConfig",
        "cloudfront:GetResponseHeadersPolicyConfig",
        "cloudfront:GetOriginRequestPolicy",
        "cloudfront:GetCloudFrontOriginAccessIdentity",
        "cloudfront:UpdateDistribution",
        "cloudfront:UpdateCloudFrontOriginAccessIdentity",
        "cloudfront:DeleteOriginRequestPolicy",
        "cloudfront:PublishFunction",
        "cloudfront:DeleteKeyGroup",
        "cloudfront:CreateMonitoringSubscription",
        "cloudfront:GetStreamingDistributionConfig",
        "cloudfront:AssociateAlias",
        "cloudfront:ListDistributionsByLambdaFunction",
        "cloudfront:CreateStreamingDistribution",
        "cloudfront:GetInvalidation",
        "cloudfront:ListCachePolicies",
        "cloudfront:ListDistributionsByKeyGroup",
        "cloudfront:UpdateStreamingDistribution",
        "cloudfront:CreateDistribution",
        "cloudfront:GetOriginRequestPolicyConfig",
        "cloudfront:ListPublicKeys",
        "cloudfront:ListConflictingAliases",
        "cloudfront:CreateRealtimeLogConfig",
        "cloudfront:ListRealtimeLogConfigs",
        "cloudfront:ListFieldLevelEncryptionProfiles",
        "cloudfront:ListDistributions",
        "cloudfront:DeleteCachePolicy",
        "cloudfront:ListStreamingDistributions",
        "cloudfront:GetCachePolicy",
        "cloudfront:DeleteDistribution",
        "cloudfront:CreateFieldLevelEncryptionConfig",
        "cloudfront:CreateResponseHeadersPolicy",
        "cloudfront:ListDistributionsByResponseHeadersPolicyId",
        "cloudfront:ListDistributionsByOriginRequestPolicyId"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  tags = {
    custom-policy = "cloudFront"
  }

  tags_all = {
    custom-policy = "cloudFront"
  }
}

resource "aws_iam_policy" "tfer--developers-policy" {
  name = "developers-policy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "elasticbeanstalk:*",
        "codecommit:*",
        "codeartifact:*",
        "s3:*",
        "lambda:*",
        "codedeploy:*",
        "amplifybackend:*",
        "dynamodb:*",
        "ec2:*",
        "eks:*",
        "amplify:*"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
