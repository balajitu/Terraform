provider "aws" {
  region     = "${var.region}"
  access_key = "AKIARUQ77TXFFCZBM4M7"
  secret_key = "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"
}

resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags = {
    Name = "main"
    Location = "Bangalore"
  }
}
resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.vpcsubnet_cidr}"

  tags = {
    Name = "subnet1"
  }
}
