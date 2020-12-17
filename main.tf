/* terraform {
  backend "remote" {
    organization = "org187"
    workspaces {
      name = "workspace187"
    }
  }
} */

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
  version    = "3.21.0"
}

module "keypair" {
  source  = "mitchellh/dynamic-keys/aws"
  version = "2.0.0"
  path    = "${path.root}/keys"
  name    = "${var.identity}-key"
}

module "server" {
  source                 = "./server"
  ubuntu_version         = "18"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  identity               = var.identity
  key_name               = module.keypair.key_name
  private_key            = module.keypair.private_key_pem
  num_webs               = var.num_webs
}

output "public_ip" {
  value = module.server.public_ip
}

output "public_dns" {
  value = module.server.public_dns
}

