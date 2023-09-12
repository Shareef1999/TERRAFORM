resource "aws_api_gateway_rest_api" "api_gateway" {
    name = local.api_name
    description = var.api_description

    endpoint_configuration {
      types = [ "REGIONAL" ]
    }
}

resource "aws_api_gateway_method" "post_method" {
    rest_api_id = aws_api_gateway_rest_api.api_gateway.id
    resource_id = var.api_resource.id
    http_method = "POST"
    authorization = "NONE"
    api_key_required = true
  
}

resource "aws_api_gateway_method_response" "response_200" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  resource_id = var.api_resource.id
  http_method = aws_api_gateway_method.post_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }
}