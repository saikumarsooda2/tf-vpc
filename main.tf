resource "aws_vpc" "main" {
  cidr_block = var.vpc

 tags = merge(
   {
   name = aws_vpc},
var.tags
 )
}
