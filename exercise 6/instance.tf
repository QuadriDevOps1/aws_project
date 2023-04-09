resource "aws_key_pair" "terraform-key" {
  key_name   = "terraform-key"
  public_key = file(var.PUB_KEY)
}

resource "aws_instance" "sscademy-web" {
  ami                    = var.AMI
  instance_type          = var.INSTANCE_TYPE
  subnet_id              = aws_subnet.sscademy-pub-1.id
  key_name               = aws_key_pair.terraform-key.key_name
  vpc_security_group_ids = [aws_security_group.sscademy_stack_sg.id]
  tags = {
    Name = "my-web-server"
  }
}

resource "aws_ebs_volume" "vol_4_server" {
  availability_zone = var.ZONE1
  size              = 3
  tags = {
    Name = "extr-vol-4-server"
  }
}

resource "aws_volume_attachment" "atch_vol_server" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.vol_4_server.id
  instance_id = aws_instance.sscademy-web.id
}

output "PublicIP" {
  value = aws_instance.sscademy-web.public_ip
}
