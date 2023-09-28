output "subnet_ids" {
  value = aws_subnet.main.*.cidr_block
}