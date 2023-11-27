resource "aws_codepipeline" "tfer--back-end-bookrentalapp" {
  artifact_store {
    location = "codepipeline-eu-west-2-250643581593"
    type     = "S3"
  }

  name     = "back-end-bookrentalapp"
  role_arn = "arn:aws:iam::281408736314:role/service-role/AWSCodePipelineServiceRole-eu-west-2-back-end-bookRentalApp"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "BookRentalAppBE"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      namespace        = "BuildVariables"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      region           = "eu-west-2"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        BucketName = "elasticbeanstalk-eu-west-2-281408736314"
        Extract    = "true"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "Deploy"
      namespace       = "DeployVariables"
      owner           = "AWS"
      provider        = "S3"
      region          = "eu-west-2"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch               = "master"
        Owner                = "yasir-satti"
        PollForSourceChanges = "false"
        Repo                 = "BookRentalAppSpboot"
      }

      name             = "Source"
      namespace        = "SourceVariables"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      region           = "eu-west-2"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--bookRentalSprintBoot" {
  artifact_store {
    location = "codepipeline-eu-west-2-250643581593"
    type     = "S3"
  }

  name     = "bookRentalSprintBoot"
  role_arn = "arn:aws:iam::281408736314:role/service-role/AWSCodePipelineServiceRole-eu-west-2-back-end-bookRentalApp"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "BookRentalAppBE"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "build"
      output_artifacts = ["bookRentalSpingBoot"]
      owner            = "AWS"
      provider         = "CodeBuild"
      region           = "eu-west-2"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ApplicationName = "back-end-book-rental-app"
        EnvironmentName = "env-Backendbookrentalapp"
      }

      input_artifacts = ["SourceArtifact"]
      name            = "Deploy"
      namespace       = "DeployVariables"
      owner           = "AWS"
      provider        = "ElasticBeanstalk"
      region          = "eu-west-2"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch               = "master"
        Owner                = "yasir-satti"
        PollForSourceChanges = "false"
        Repo                 = "BookRentalAppSpboot"
      }

      name             = "Source"
      namespace        = "SourceVariables"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      region           = "eu-west-2"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--front-end-bookrentalapp" {
  artifact_store {
    location = "codepipeline-eu-west-2-250643581593"
    type     = "S3"
  }

  name     = "front-end-bookrentalapp"
  role_arn = "arn:aws:iam::281408736314:role/service-role/AWSCodePipelineServiceRole-eu-west-2-front-end-bookrentalapp"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "book-rental-app-react"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      namespace        = "BuildVariables"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      region           = "eu-west-2"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        BucketName = "bookrentalapp"
        Extract    = "true"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "Deploy"
      namespace       = "DeployVariables"
      owner           = "AWS"
      provider        = "S3"
      region          = "eu-west-2"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch               = "main"
        Owner                = "yasir-satti"
        PollForSourceChanges = "false"
        Repo                 = "book-rental-app-react"
      }

      name             = "Source"
      namespace        = "SourceVariables"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      region           = "eu-west-2"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}
