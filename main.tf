variable "ami_value1" {
    description = " value for the ami"  
}

variable "instance_type_value1" {
    description = "value for the instance_type1"
}

provider "aws" {
    region = "ap-south-1"       
}

resource "aws_instance" "rhl-13390257" {
  ami = var.ami_value1
  instance_type = var.instance_type_value1
    tags = {
    Name = "rhl-terraform"
  }
}
