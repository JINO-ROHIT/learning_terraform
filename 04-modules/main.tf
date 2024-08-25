provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-053b0d53c279acc90"
  instance_type_value = "t2.micro"
}

output "public_ip_address_latest" {
  value = module.ec2_instance.public-ip-address
}