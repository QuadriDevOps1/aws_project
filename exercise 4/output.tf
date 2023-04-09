output "PublicIP" {
    value = aws_instance.first_instance.public_ip
  }

  output "PrivateIP" {
    value = aws_instance.first_instance.private_ip
  }