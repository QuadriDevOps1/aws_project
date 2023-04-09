resource "aws_key_pair" "test_key" {
    key_name = "test_key"
    public_key = file("test_key.pub")
}

resource "aws_instance" "first_instance" {
  ami                    = var.AMI
  instance_type          = var.INSTANCE_TYPE
  availability_zone      = var.AZ
  key_name               = aws_key_pair.test_key.key_name
  vpc_security_group_ids = ["sg-0ee896d07592cee29"]
  tags = {
    Name = "first-instance"
  }

  connection {
    user = var.USER
    private_key = file("test_key")
    host = self.public_ip
  }

  provisioner "file" {
    source = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
        "chmod u+x /tmp/web.sh",
        "sudo /tmp/web.sh"
    ]
  }
 
}