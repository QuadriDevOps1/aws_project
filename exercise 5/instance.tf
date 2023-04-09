resource "aws_instance" "firstinstance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  availability_zone      = "us-east-1a"
  key_name               = "terraform_key"
  vpc_security_group_ids = ["sg-0ee896d07592cee29"]
  tags = {
    Name = "terra-instance2",
    Project = "devops"
  }
}