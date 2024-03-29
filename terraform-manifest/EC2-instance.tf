#source block
terraform {
    required_providers {
      aws={
        source= "hashicrop/aws"
      }
    }
}

#provider block
provider "aws" {
  profile= "default"
  region= "ca-cental-1"
}

#resource block
resource "aws_instance" "ec2" {
    ami = "ami-0b47e94e754413bcb"
    instance_type= "t2.micro"
}