terraform {
    backend "s3" {
        bucket = "sscademy-terra"
        key = "backend/statefile"
        region = "us-east-1"
      
    }
}