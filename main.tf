resource "azurerm_storage_account" "terraformSqlPrimaryStorage" {
  name                     = var.storage_account_name
  resource_group_name      = var.storage_account_rgname
  location                 = var.storage_account_location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_sql_server" "terraformSqlServerPrimary" {
  name                         = var.sqlserverprimaryname
  resource_group_name          = var.sqlserverprimaryrgname
  location                     = var.sqlserverprimarylocation
  version                      = var.sqlserverprimaryversion
  administrator_login          = var.sqlserverprimaryusername
  administrator_login_password = var.sqlserverprimarypassword

  extended_auditing_policy {
    storage_endpoint                        = azurerm_storage_account.terraformSqlPrimaryStorage.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.terraformSqlPrimaryStorage.primary_access_key
    storage_account_access_key_is_secondary = var.sql_server_storage_account_access_key_for_secondary
    retention_in_days                       = var.sql_server_retention
  }

  tags = var.sqlServerPrimary_Tag
}

