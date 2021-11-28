terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

data "aws_vpc" "default" {
  default = true
}

output "default_vpc_cidr_block" {
  value = data.aws_vpc.default.cidr_block
}
