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
  region  = "ap-northeast-1"
}

resource "aws_instance" "terraform_aws" {
  ami           = "ami-0ce107ae7af2e92b5" # Amazon Linux 2 AMI
  # ami           = "ami-09b86f9709b3c33d4" # Ubuntu Server 20.04 LTS
  instance_type = "t2.micro"
}
