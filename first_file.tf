provider "aws" {
  region     = "us-west-2"
  access_key = "AKIARUQ77TXFFCZBM4M7"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami = "ami-0ce21b51cb31a48b8"
  instance_type = "t2.micro"
}
