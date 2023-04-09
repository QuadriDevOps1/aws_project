provider "aws" {
  region = "us-east-1"
  # access_key = ""
  # secret_key = ""  

}

resource "aws_instance" "first_instance" {
  ami                    = "ami-01d9e06b75f9d69c4"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1b"
  key_name               = "sample-key"
  vpc_security_group_ids = ["sg-05370cfc37056e35a"]
  tags = {
    Name = "first-instance"
  }
}