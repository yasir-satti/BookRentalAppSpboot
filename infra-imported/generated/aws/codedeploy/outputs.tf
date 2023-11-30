output "aws_codedeploy_app_tfer--BookRentalApp_id" {
  value = "${aws_codedeploy_app.tfer--BookRentalApp.id}"
}

output "aws_codedeploy_app_tfer--bookrental_id" {
  value = "${aws_codedeploy_app.tfer--bookrental.id}"
}

output "aws_codedeploy_app_tfer--codebuild-book-rental-app-react-service-role_id" {
  value = "${aws_codedeploy_app.tfer--codebuild-book-rental-app-react-service-role.id}"
}
