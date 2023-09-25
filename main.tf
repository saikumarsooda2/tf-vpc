resource "aws_vpc" "main" {
  cidr_block = var.vpc

 tags = merge({
   name = aws_vpc},
   var.tags)
}

module "subnet" {
  source = "./subnets"
  for_each = var.subnets
  cidr_block = each.value["cidr_block"]
  subnet_name = each.key
  vpc_id = "aws_vpc.main.id"
}