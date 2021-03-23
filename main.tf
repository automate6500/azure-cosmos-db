variable "name" {
  type    = string
  default = "azure-lab"
}

variable "location" {
  type    = string
  default = "westus2"
}

resource "random_pet" "lab" {
  length = 1
}

resource "random_integer" "lab" {
  min = 1500
  max = 6500
}

locals {
  name = join("-", [var.name, random_pet.lab.id, random_integer.lab.id])
}

resource "azurerm_resource_group" "lab" {
  name     = local.name
  location = var.location
  tags = {
    Name      = local.name
    Terraform = true
  }
}

module "lab-vnet" {
  source              = "Azure/vnet/azurerm"
  resource_group_name = azurerm_resource_group.lab.name
  address_space       = ["10.0.0.0/16"]
  subnet_prefixes     = ["10.0.1.0/24"]
  subnet_names        = ["cosmos-db"]
}
