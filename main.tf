provider "aws" {
  region = var.region
}


module "network" {
  source   = "./modules/networks"
  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr

}
module "instance" {
  source        = "./modules/instances"
  ec2_name      = var.ec2_name
  ami           = var.ami
  instance_type = var.instance_type
}

