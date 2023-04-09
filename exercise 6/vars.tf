variable REGION {
    default = "us-east-1"
}

variable AMI {
    default = "ami-0aa2b7722dc1b5612"
}

variable INSTANCE_TYPE {
    default = "t2.micro"
}


variable "USER" {
   default = "ubuntu" 
}

variable "ZONE1" {
    default = "us-east-1a"
}

variable "ZONE2" {
    default = "us-east-1b"
}

variable "ZONE3" {
    default = "us-east-1c"
}

variable "MYIP" {
    default = "103.146.217.124/32"
  
}

variable "PUB_KEY" {
    default = "test_key.pub"
  
}