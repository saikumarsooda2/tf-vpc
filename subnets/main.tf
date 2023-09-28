resource "aws_subnet" "main" {
  count             = length(var.cidr_block)
  vpc_id            = var.vpc_id
  cidr_block        = element(var.cidr_block, count.index)
  availability_zone = elememt(var.az, count.index)
   tag = merge({
    Name = "${var.env}-${var.subnet_name}-subnet"
  },
    var.tags["default"])
}
