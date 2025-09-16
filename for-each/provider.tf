terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.12.0"
    }
  }
  backend "s3" {
    bucket = "devopsp-ractice123"
    key = "for-each-demo"
    region = "us-east-1"
    dynamodb_table = "devops-practice-locking"
    
  }
}

provider "aws"{
    #configuration set
    region = "us-east-1"

}