
resource "random_id" "suffix" {
  byte_length = 4
}

module "vpc" {
  source               = "./modules/vpc"
  project_name         = "poc-25"
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidr   = "10.0.1.0/24"
  availability_zone    = "ap-south-1a"
}

module "ec2" {
  source         = "./modules/ec2"
  instance_name  = "poc-25-ec2"
  instance_type  = "t3.micro"
  ami_id         = "ami-0f5ee92e2d63afc18" # Ubuntu 22.04 ap-south-1
  subnet_id      = module.vpc.public_subnet_id
  vpc_id         = module.vpc.vpc_id
  ssh_cidr       = "0.0.0.0/0"
}


module "s3" {
  source       = "./modules/s3"
  bucket_name  = "poc-26-app-${random_id.suffix.hex}"
  project_name = "poc-26"
}
