resource "aws_vpc" "main" {
  cidr_block = var.vpc

 tags = merge(
   {
   name = test},
var.tags
 )
}
