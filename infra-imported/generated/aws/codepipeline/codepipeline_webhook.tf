resource "aws_codepipeline_webhook" "tfer--arn-003A-aws-003A-codepipeline-003A-eu-west-2-003A-281408736314-003A-webhook-003A-backendbookrentalapp--Source--yasirsattiBookRentalAppSpbo--1109286049" {
  authentication = "GITHUB_HMAC"

  authentication_configuration {
    secret_token = "243361664750616434935137482217058672939068223213680384757355698484519911136841513010977805328162"
  }

  filter {
    json_path    = "$.ref"
    match_equals = "refs/heads/{Branch}"
  }

  name            = "backendbookrentalapp--Source--yasirsattiBookRentalAppSpbo--1109286049"
  target_action   = "Source"
  target_pipeline = "back-end-bookrentalapp"
}

resource "aws_codepipeline_webhook" "tfer--arn-003A-aws-003A-codepipeline-003A-eu-west-2-003A-281408736314-003A-webhook-003A-bookRentalSprintBoot--Source--yasirsattiBookRentalAppSpbo--2125193442" {
  authentication = "GITHUB_HMAC"

  authentication_configuration {
    secret_token = "3008227236327707916251975433854858952841077260842239775999187343754154959841920955262902182341079"
  }

  filter {
    json_path    = "$.ref"
    match_equals = "refs/heads/{Branch}"
  }

  name            = "bookRentalSprintBoot--Source--yasirsattiBookRentalAppSpbo--2125193442"
  target_action   = "Source"
  target_pipeline = "bookRentalSprintBoot"
}

resource "aws_codepipeline_webhook" "tfer--arn-003A-aws-003A-codepipeline-003A-eu-west-2-003A-281408736314-003A-webhook-003A-frontendbookrentalapp--Source--yasirsattibookrentalappreac--1675037720" {
  authentication = "GITHUB_HMAC"

  authentication_configuration {
    secret_token = "24666222981811154281127575271817802851174072649434109808941888550039933733976242787138421423764186"
  }

  filter {
    json_path    = "$.ref"
    match_equals = "refs/heads/{Branch}"
  }

  name            = "frontendbookrentalapp--Source--yasirsattibookrentalappreac--1675037720"
  target_action   = "Source"
  target_pipeline = "front-end-bookrentalapp"
}
