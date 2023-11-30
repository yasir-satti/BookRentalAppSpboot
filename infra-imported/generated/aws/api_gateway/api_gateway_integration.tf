resource "aws_api_gateway_integration" "tfer--jpe2d2wxkc-002F-dq76x4-002F-GET" {
  cache_namespace         = "dq76x4"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "GET"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "dq76x4"
  rest_api_id             = "jpe2d2wxkc"
  timeout_milliseconds    = "29000"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:eu-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-2:281408736314:function:hello:${stageVariables.lambdaAlias}/invocations"
}
