data "archive_file" "app" {
  type        = "zip"
  source_dir  = var.source_path
  output_path = "./app.zip"
}

resource "aws_lambda_function" "app" {
  function_name    = var.function_name
  filename         = data.archive_file.app.output_path
  source_code_hash = data.archive_file.app.output_base64sha256
  runtime          = var.runtime
  role             = aws_iam_role.lambda_iam_role.arn
  handler          = var.handler
}