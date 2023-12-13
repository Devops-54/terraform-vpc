module "vpc" {
  source          = "./vendor/modules/vpc"
  VPC_CIDR        = var.VPC_CIDR
  ENV             = var.ENV
}


# You cannot variablize this piece of code in the source parameter 