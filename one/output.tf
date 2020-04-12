provider "aws" {
  region     = "us-west-2"
  access_key = "AKIARUQ77TXFFCZBM4M7"
  secret_key = "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"
}

resource "aws_eip" "lb" {
  vpc      = true
}

output "eip" {
  value = aws_eip.lb
}

resource "aws_s3_bucket" "mys3" {
  bucket = "kplabs-attribute-demo-002"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3
}
