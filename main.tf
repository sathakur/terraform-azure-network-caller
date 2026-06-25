terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source = "git::https://github.com/sathakur/terraform-azure-network-module.git?ref=main"

  resource_group_name   = var.resource_group_name
  vnet_name             = var.vnet_name
  vnet_address_space    = var.vnet_address_space
  subnet_name           = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
  create_nat_gateway    = var.create_nat_gateway

  tags = {
    CreatedBy   = "StackGuardian"
    Environment = var.environment
    Owner       = var.owner
    CostCenter  = var.cost_center
  }
}
