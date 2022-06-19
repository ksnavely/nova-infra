terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo1" {
  ami           = "ami-0b0ea68c435eb488d"
  instance_type = "t2.nano"
  # TODO: this should be pulled from data integration with the nt kube module
  subnet_id     = "subnet-03733d2c8a5a1f2d7" # nt demo us-east-1 private

  tags = {
    Name = "demo"
  }
}
