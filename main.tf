resource "aws_vpc" "main" {
  cidr_block         = var.cidr_block
  enable_dns_support = true
  tags = merge({
    Name = "${var.env}-vpc"
  },
    var.tags["default"])
}

module "subnets" {
  source = "./subnets"

  for_each    = var.subnets
  cidr_block  = each.value["cidr_block"]
  subnet_name = each.key

  vpc = aws_vpc.main.id

  env  = var.env
  tags = var.tags
  az   = var.az
}

resource "aws_vpc_peering_connection" "peer" {
  vpc_id      = aws_vpc.main.id
  peer_vpc_id = var.default_vpc
  auto_accept = true
}

resource "aws_route_table" "example" {
  vpc_id = aws_vpc.main.id

  tags = merge({
    Name = "${var.env}-vpc"
  },
    var.tags["default"])
}