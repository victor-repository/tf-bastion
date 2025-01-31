module "vpc" {
  source = "git::https://github.com/victor-repository/tf-modules.git//vpc"

  environment   = var.environment
  region        = var.region
  name          = var.name
  cidr_block    = var.cidr_block
  azs           = var.azs
  public_cidrs  = var.public_cidrs
  private_cidrs = var.private_cidrs
  tags = {
    Terraform   = "True"
    Environment = "Testing"
    Name        = "vpc-test2"
  }



}

# module "ec2" {
#   source = "git::https://tf-modules/ec2"
#   ...
# }
