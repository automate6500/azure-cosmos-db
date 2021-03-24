variable "name" {
  type    = string
  default = "azure-lab"
}

variable "location" {
  type    = string
  default = "westus2"
}

resource "random_pet" "lab" {
  length = 2
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
