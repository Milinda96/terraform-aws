terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

# resource "aws_vpc" "prod-vpc" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#       Name = "Production"
#   }
# }

resource "aws_instance" "terraform-server" {
  ami           = "ami-03d315ad33b9d49c4"
  instance_type = "t2.micro"

}