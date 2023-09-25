resource "aws_vpc" "main" {
  cidr_block = var.vpc

 tags = merge({
   name = test,
   tags = "${var.tags}"
 })
}
