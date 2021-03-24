variable "enable_free_tier" {
  type        = bool
  default     = false
  description = "Enable Free Tier pricing option for this Cosmos DB account. Defaults to false. Changing this forces a new resource to be created."
}

resource "azurerm_cosmosdb_account" "lab" {
  name                = azurerm_resource_group.lab.name
  resource_group_name = azurerm_resource_group.lab.name
  location            = azurerm_resource_group.lab.location
  offer_type          = "Standard"
  enable_free_tier    = var.enable_free_tier

  capabilities {
    name = "EnableCassandra"
  }

  consistency_policy {
    consistency_level       = "Session"
    max_interval_in_seconds = 10
    max_staleness_prefix    = 200
  }

  geo_location {
    location          = azurerm_resource_group.lab.location
    failover_priority = 0
  }
}

# resource "azurerm_cosmosdb_cassandra_keyspace" "lab" {
#   name                = "customers"
#   resource_group_name = azurerm_resource_group.lab.name
#   account_name        = azurerm_cosmosdb_account.lab.name
#   throughput          = 400
# }
#
# resource "azurerm_cosmosdb_cassandra_table" "lab" {
#   name                  = "records"
#   cassandra_keyspace_id = azurerm_cosmosdb_cassandra_keyspace.lab.id
#
#   schema {
#     partition_key {
#       name = "id"
#     }
#
#     column {
#       name = "id"
#       type = "int"
#     }
#
#     column {
#       name = "address"
#       type = "ascii"
#     }
#
#     column {
#       name = "blood_group"
#       type = "ascii"
#     }
#
#     column {
#       name = "company"
#       type = "ascii"
#     }
#
#     column {
#       name = "job"
#       type = "ascii"
#     }
#
#     column {
#       name = "mail"
#       type = "ascii"
#     }
#
#     column {
#       name = "name"
#       type = "ascii"
#     }
#
#     column {
#       name = "residence"
#       type = "ascii"
#     }
#
#     column {
#       name = "sex"
#       type = "ascii"
#     }
#
#     column {
#       name = "ssn"
#       type = "ascii"
#     }
#
#     column {
#       name = "username"
#       type = "ascii"
#     }
#   }
# }
