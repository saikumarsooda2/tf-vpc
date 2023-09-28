variable "cidr_block" {}
variable "tags" {}
variable "subnets" {}
variable "env" {}
variable "az" {
  string = {
    default = ["us-east-1a", "us-east-1b"]
  }
}