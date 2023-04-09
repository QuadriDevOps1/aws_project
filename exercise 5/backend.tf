terraform {
    backend "s3" {
        bucket = "terra-state-ss"
        key = "terraform/backend"
        region = "us-east-1"
      
    }
}