variable "region" {
  description = "The AWS region where resources will be deployed."
  type        = list(string)
  default     = ["us-east-1", "ap-south-1", "eu-west-1"]
}