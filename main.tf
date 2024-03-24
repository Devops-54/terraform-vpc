module "domain" {
  source                = "./vendor/modules/vpc"
  VPC_CIDR              = var.VPC_CIDR
  ENV                   = var.ENV
  AZ                    = var.AZ
  PUBLIC_SUBNET_CIDR    = var.PUBLIC_SUBNET_CIDR 
  PRIVATE_SUBNET_CIDR   = var.PRIVATE_SUBNET_CIDR
  DEFAULT_VPC_ID        = var.DEFAULT_VPC_ID
  DEFAULT_VPC_CIDR      = var.DEFAULT_VPC_CIDR
  DEFAULT_VPC_RT        = var.DEFAULT_VPC_RT


}


# You cannot variablize this piece of code in the source parameter 