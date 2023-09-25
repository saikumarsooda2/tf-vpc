resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

 tags = merge({
   name = "${var.env}"-aws-vpc},
   var.tags)
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = merge({
    name = "${var.env}"-aws-vpc},
    var.tags)
}