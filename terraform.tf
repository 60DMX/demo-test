terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-034dad9bdb65ec34b"
  instance_type = "t2.micro"
}
