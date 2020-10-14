terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "terraform_aws" {
  ami           = var.amis[var.region]
  instance_type = "t2.micro"
}

output "ami" {
  value = aws_instance.terraform_aws.ami
}