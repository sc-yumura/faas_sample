provider "local" {}

resource "local_file" "example" {
  filename = "hello.txt"
  content  = "Hello, Terraform!"
}

# function_name等の設定値はmodules/aws_lambda/variables.tfで定義されているもの
# それをさらにmodules/aws_lambda/main.tfで使う
module "lambda" {
  source = "./modules/aws_lambda"
  function_name = "hello-lambda"
  handler       = "index.handler"
  runtime       = "nodejs20.x"
  source_path   = "./app"
  access_key = "your_access_key"
  secret_key = "your_secret_key"
  region     = "ap-northeast-1"
}

