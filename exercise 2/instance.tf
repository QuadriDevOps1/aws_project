resource "aws_instance" "first_instance" {
  ami                    = var.AMI
  instance_type          = var.INSTANCE_TYPE
  availability_zone      = var.AZ
  key_name               = "sample-key"
  vpc_security_group_ids = ["sg-05370cfc37056e35a"]
  tags = {
    Name = "first-instance"
  }
}