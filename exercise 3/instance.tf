resource "aws_key_pair" "test_key" {
    key_name = "test_key"
    public_key = file("test_key.pub")
}

resource "aws_instance" "first_instance" {
  ami                    = var.AMI
  instance_type          = var.INSTANCE_TYPE
  availability_zone      = var.AZ
  key_name               = aws_key_pair.test_key.key_name
  vpc_security_group_ids = ["sg-05370cfc37056e35a"]
  tags = {
    Name = "first-instance"
  }

  provisioner "file" {
    source = "web.sh"
    destination = "/tmp/web.sh"
  }

  provioner "remote-exec" {
    inline = [
        "chmod u+x /tmp/web.sh",
        "sudo ./tmp/web.sh"
    ]
  }
  connection {
    user = var.USER
    private_key = file("test_key")
    host = self.public_ip
  }
}