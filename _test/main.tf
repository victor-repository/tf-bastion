module "vpc" {
  source = "../"

  environment   = "Testing-2"
  region        = "us-west-1"
  name          = "bastion"
  cidr_block    = "10.0.0.0/16"
  azs           = ["us-west-1b", "us-west-1c"]
  public_cidrs  = ["10.0.30.0/24"]
  private_cidrs = ["10.0.40.0/24"]
  tags = {
    Terraform   = "True"
    Environment = "Testing"
    Name        = "vpc-test2"
  }
}

