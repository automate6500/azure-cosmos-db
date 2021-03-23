## Requirements

| Name | Version |
|------|---------|
| azurerm | ~>2.52 |

## Providers

| Name | Version |
|------|---------|
| azurerm | ~>2.52 |
| random | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| lab-vnet | Azure/vnet/azurerm |  |

## Resources

| Name |
|------|
| [azurerm_cosmosdb_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_account) |
| [azurerm_cosmosdb_cassandra_keyspace](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_cassandra_keyspace) |
| [azurerm_cosmosdb_cassandra_table](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_cassandra_table) |
| [azurerm_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) |
| [random_integer](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) |
| [random_pet](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| location | n/a | `string` | `"westus2"` | no |
| name | n/a | `string` | `"azure-lab"` | no |

## Outputs

No output.
