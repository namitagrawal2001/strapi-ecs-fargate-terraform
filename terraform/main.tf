terraform {
  backend "s3" {
    bucket = "namit-tf-state-bucket"
    key    = "strapi/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_ecs_cluster" "cluster" {
  name = "strapi-cluster"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}
