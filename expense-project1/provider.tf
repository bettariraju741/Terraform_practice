terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.12.0"
    }
  }
}

provider "aws"{
    #configuration set
    region = "us-east-1"

}