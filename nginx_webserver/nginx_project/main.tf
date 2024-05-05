# Configure aws provider
provider "aws" {
  region = var.region

}

# Create the vpc
module "vpc" {
  source = "../modules/vpc"
  region = var.region
  project_name = var.project_name
  vpc_cidr = var.vpc_cidr
  public_subnet_az1_cidr = var.public_subnet_az1_cidr
}

# Create the security group

module "security_group" {
  source = "../modules/security_groups"
  vpc_id = module.vpc.vpc_id
}