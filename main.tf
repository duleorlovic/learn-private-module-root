# terraform {
#   cloud {
#     organization = "trkin"

#     workspaces {
#       name = "learn-private-module-root-cli"
#     }
#   }
# }

provider "aws" {
  region = var.region
}

module "s3-webapp" {
  source  = "duleorlovic/s3-webapp/aws"
  version = "1.0.0"
  # insert the 3 required variables here
  name        = var.name
  region = var.region
  prefix = var.prefix
}
