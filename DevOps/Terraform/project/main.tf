provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc_cidr
  vpc_name   = var.vpc_name
}

module "subnet" {
  source      = "./modules/subnet"
  vpc_id      = module.vpc.vpc_id
  cidr_block  = var.subnet_cidr
  az          = var.availability_zone
  subnet_name = var.subnet_name
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.subnet.subnet_id
  vpc_id        = module.vpc.vpc_id
  instance_name = var.instance_name
}
