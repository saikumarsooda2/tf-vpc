resource "aws_subnet" "main" {
  count = lenth(var.cidr_block)
  vpc_id     = var.vpc_id
  cidr_block = element(var.cidr_block, count.index)

  tags = {
    Name = "Main"
  }
}