variable "ami" {
  default     = "ami-0953476d60561c955"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "subnet_id" {
    default = "subnet-06898750589209a37"
}

variable "vpc_id" {
    default = "vpc-0a0e7c7c6ef48fc37"
}

#Tags
variable "tag_ec2_instance_name" {
  default = "Terraform"
}

variable "tag_security_group_name" {
  default = "Terraform_SG"
}

variable "tag_env" {
  default = "Dev"
}

variable "tag_project" {
  default = "Zomato"
}
