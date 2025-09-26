terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.12.0"
    }
  }
  backend "s3" {
    bucket = "devopsp-ractice123"
    key = "devops-demo-remote"
    dynamodb_table = "remote-state-locking"
    region = "us-east-1"
  }
}

provider "aws"{
    #configuration set
    region = "us-east-1"

}