resource "aws_api_gateway_stage" "tfer--jpe2d2wxkc-002F-dev" {
  cache_cluster_enabled = "false"
  deployment_id         = "rzreeo"
  description           = "devlopment environment"
  rest_api_id           = "jpe2d2wxkc"
  stage_name            = "dev"

  variables = {
    lambdaAlias = "development"
  }

  xray_tracing_enabled = "false"
}

resource "aws_api_gateway_stage" "tfer--jpe2d2wxkc-002F-prod" {
  cache_cluster_enabled = "false"
  deployment_id         = "lm9qse"
  description           = "production environment"
  rest_api_id           = "jpe2d2wxkc"
  stage_name            = "prod"

  variables = {
    lambdaAlias = "production"
  }

  xray_tracing_enabled = "false"
}
