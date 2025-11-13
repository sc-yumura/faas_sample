variable "function_name" {
  description = "Lambda function name"
  type        = string
  default     = "hello-lambda"
}
variable "handler" {
    description = "Lambda function handler"
    type        = string
    default     = "index.handler"
}
variable "runtime" {
    description = "Lambda function runtime"
    type        = string
    default     = "nodejs20.x"
}
variable "source_path" {
    description = "Path to the Lambda function source code"
    type        = string
}
variable "access_key" {
  description = "AWS Access Key"
  type        = string
}
variable "secret_key" {
  description = "AWS Secret Key"
  type        = string
}
variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}