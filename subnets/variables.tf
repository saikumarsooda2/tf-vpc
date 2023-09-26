variable "env" {}
variable "tags" {}
variable "cidr_block" {}
variable "subnet_name" {}
variable "vpc_id" {}
variable "az" {
  default = ["us-east-1a", "us-east-1b"]
}