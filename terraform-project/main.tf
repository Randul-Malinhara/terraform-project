provider "aws" {
     region = "us-east-1"
}

module "ec2_instances" {
    source = "./modules/ec2"
    instance_count = 2
}