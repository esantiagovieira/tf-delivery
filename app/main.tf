terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  # cloud {
  #   organization = "g68-fiap"

  #   workspaces {
  #     name = "db"
  #   }
  # }
}

provider "aws" {
  region  = "us-east-1"
  profile = "academy"
}