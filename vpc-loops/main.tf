
# create subnets in all availability zones in US West (Oregon) using loops.
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
resource "aws_subnet" "subnets" {     # we are using count variable and lenth function which list size of the list
  count = "${length(data.aws_availability_zones.azs.names)}" # added datasource syntax
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${element(var.subnet_cidr,count.index)}"    # used element fuction

  tags = {
    Name = "subnet-${count.index+1}"
  }
}
