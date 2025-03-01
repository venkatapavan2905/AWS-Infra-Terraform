terraform {
    backend "s3" {
        bucket = "terraform-state-bucket-2906"
        key = "global/terraform.tfstate"
        region = "ap-south-1"
        encrypt = true
        dynamodb_table = "terraform-lock"
    }
}
