variable "resource_group_name" {
  description = "Existing Azure Resource Group name."
  type        = string
}

variable "vnet_name" {
  description = "VNet name."
  type        = string
}

variable "vnet_address_space" {
  description = "VNet address space."
  type        = string
  default     = "10.10.0.0/16"
}

variable "subnet_name" {
  description = "Subnet name."
  type        = string
}

variable "subnet_address_prefix" {
  description = "Subnet address prefix."
  type        = string
  default     = "10.10.1.0/24"
}

variable "create_nat_gateway" {
  description = "Create NAT Gateway. Allowed values: yes, no."
  type        = string
  default     = "no"

  validation {
    condition     = contains(["yes", "no"], lower(var.create_nat_gateway))
    error_message = "Allowed values are yes or no."
  }
}

variable "environment" {
  description = "Environment tag."
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner tag."
  type        = string
  default     = "cloud-team"
}

variable "cost_center" {
  description = "Cost center tag."
  type        = string
  default     = "na"
}
