# Default provider (not used, just to satisfy Terraform)
provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "useast"
  region = var.region[0]
}

provider "aws" {
  alias  = "apsouth"
  region = var.region[1]
}

provider "aws" {
  alias  = "euwest"
  region = var.region[2]
}

resource "aws_s3_bucket" "bucket_us_east" {
  provider = aws.useast
  bucket   = var.s3_bucket_names[0]
}

resource "aws_s3_bucket" "bucket_ap_south" {
  provider = aws.apsouth
  bucket   = var.s3_bucket_names[1]
}

resource "aws_s3_bucket" "bucket_eu_west" {
  provider = aws.euwest
  bucket   = var.s3_bucket_names[2]
}