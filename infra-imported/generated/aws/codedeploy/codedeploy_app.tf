resource "aws_codedeploy_app" "tfer--BookRentalApp" {
  compute_platform = "Server"
  name             = "BookRentalApp"
}

resource "aws_codedeploy_app" "tfer--bookrental" {
  compute_platform = "Server"
  name             = "bookrental"
}

resource "aws_codedeploy_app" "tfer--codebuild-book-rental-app-react-service-role" {
  compute_platform = "Server"
  name             = "codebuild-book-rental-app-react-service-role"
}
