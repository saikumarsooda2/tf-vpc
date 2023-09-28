variable "cidr_block" {}
variable "tags" {}
variable "subnets" {}
variable "env" {}
variable "az" {

    default = ["us-east-1a", "us-east-1a"]
}
variable "default_vpc" {}