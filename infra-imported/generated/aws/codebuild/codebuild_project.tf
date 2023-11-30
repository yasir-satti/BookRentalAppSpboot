resource "aws_codebuild_project" "tfer--BookRentalAppBE" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "BookRentalAppBE"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:eu-west-2:281408736314:alias/aws/s3"

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:6.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "false"
    type                        = "LINUX_CONTAINER"
  }

  logs_config {
    cloudwatch_logs {
      status = "ENABLED"
    }

    s3_logs {
      encryption_disabled = "false"
      status              = "DISABLED"
    }
  }

  name               = "BookRentalAppBE"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::281408736314:role/service-role/back-end-pipeline-role-bookrentalapp"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--book-rental-app-react" {
  artifacts {
    encryption_disabled    = "false"
    location               = "bookrentalapp"
    name                   = "book-rental-app-react"
    namespace_type         = "NONE"
    override_artifact_name = "true"
    packaging              = "NONE"
    type                   = "S3"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:eu-west-2:281408736314:alias/aws/s3"

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:4.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "false"
    type                        = "LINUX_CONTAINER"
  }

  logs_config {
    cloudwatch_logs {
      status = "ENABLED"
    }

    s3_logs {
      encryption_disabled = "false"
      status              = "DISABLED"
    }
  }

  name               = "book-rental-app-react"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::281408736314:role/service-role/codebuild-book-rental-app-react-service-role"

  source {
    buildspec       = "version: 0.2\nenv:\n  variables:\n    NODE_ENV: $NODE_ENV\nphases:\n  install:\n      runtime-versions:\n        nodejs: 12\n  build:\n      commands:\n        - npm install\n        - echo $NODE_ENV\n        - NODE_ENV=$NODE_ENV\n        - echo building app...\n        - npm run build\nartifacts:\n    files:\n      - '**/*'\n    base-directory: 'build'"
    git_clone_depth = "1"

    git_submodules_config {
      fetch_submodules = "false"
    }

    insecure_ssl        = "false"
    location            = "https://git-codecommit.eu-west-2.amazonaws.com/v1/repos/book-rental-app-react"
    report_build_status = "false"
    type                = "CODECOMMIT"
  }

  source_version = "refs/heads/main"
}
