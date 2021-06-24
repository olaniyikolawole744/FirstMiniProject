terraform {
    backend "s3" {
        bucket = "statefile-bucket-744"
        key = "devops/training/statefile"
        region = "us-east-1"
    }
}

