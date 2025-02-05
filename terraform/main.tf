terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
  profile = "bsdfurg"
}

resource "aws_default_vpc" "default_vpc" {}

resource "aws_default_subnet" "us_east_1a" {
  availability_zone = "us-east-1a"
}

resource "aws_default_subnet" "us_east_1b" {
  availability_zone = "us-east-1b"
}