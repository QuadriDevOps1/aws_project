resource "aws_vpc" "sscademy-vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  tags = {
    Name = "sscademy-vpc"
  }
}

resource "aws_subnet" "sscademy-pub-1" {
  vpc_id                  = aws_vpc.sscademy-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE1
  tags = {
    Name = "sscademy-pub-1"
  }
}

resource "aws_subnet" "sscademy-pub-2" {
  vpc_id                  = aws_vpc.sscademy-vpc.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE2
  tags = {
    Name = "sscademy-pub-2"
  }
}


resource "aws_subnet" "sscademy-pub-3" {
  vpc_id                  = aws_vpc.sscademy-vpc.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE3
  tags = {
    Name = "sscademy-pub-3"
  }
}


resource "aws_subnet" "sscademy-priv-1" {
  vpc_id                  = aws_vpc.sscademy-vpc.id
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE1
  tags = {
    Name = "sscademy-priv-1"
  }
}


resource "aws_subnet" "sscademy-priv-2" {
  vpc_id                  = aws_vpc.sscademy-vpc.id
  cidr_block              = "10.0.5.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE2
  tags = {
    Name = "sscademy-priv-2"
  }
}


resource "aws_subnet" "sscademy-priv-3" {
  vpc_id                  = aws_vpc.sscademy-vpc.id
  cidr_block              = "10.0.6.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE3
  tags = {
    Name = "sscademy-priv-3"
  }
}

resource "aws_internet_gateway" "sscademy-IGW" {
  vpc_id = aws_vpc.sscademy-vpc.id
  tags = {
    Name = "sscademy-IGW"
  }
}

resource "aws_route_table" "sscademy-pub-RT" {
  vpc_id = aws_vpc.sscademy-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sscademy-IGW.id
  }

  tags = {
    Name = "sscademy-pub-RT"
  }
}


resource "aws_route_table_association" "sscademy-pub-1-a" {
  subnet_id      = aws_subnet.sscademy-pub-1.id
  route_table_id = aws_route_table.sscademy-pub-RT.id
}

resource "aws_route_table_association" "sscademy-pub-2-a" {
  subnet_id      = aws_subnet.sscademy-pub-2.id
  route_table_id = aws_route_table.sscademy-pub-RT.id
}
resource "aws_route_table_association" "sscademy-pub-3-a" {
  subnet_id      = aws_subnet.sscademy-pub-3.id
  route_table_id = aws_route_table.sscademy-pub-RT.id
}
