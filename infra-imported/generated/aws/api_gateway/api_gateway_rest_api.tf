resource "aws_api_gateway_rest_api" "tfer--jpe2d2wxkc_myAPI" {
  api_key_source               = "HEADER"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["REGIONAL"]
  }

  minimum_compression_size = "-1"
  name                     = "myAPI"
}
