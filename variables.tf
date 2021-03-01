variable "sqlserverprimaryname" {
  description = "Azure Resource Group"
  default     = "sqlserverprimary"
  type        = string
}

variable "sqlserverprimaryrgname" {
  type        = string
  description = "Resource Group Name that will get picked from another module"
}

variable "sqlserverprimarylocation" {
  type        = string
  description = "Location for SQL DB that will get picked from another module"
}

variable "storage_account_name" {
  type        = string
  description = "Specify the Storage Account Name."
  default     = "sqlstorageprimary"
}

variable "storage_account_rgname" {
  type        = string
  description = "Specify the Storage Account Resource Group Name."
  default     = "resourcegroupname"
}

variable "storage_account_location" {
  type        = string
  description = "Specify the SQL password here."
  default     = "North Europe"
}

variable "storage_account_tier" {
  type        = string
  description = "Specify the Storage Account Tier."
  default     = "Standard"
}

variable "storage_account_replication_type" {
  type        = string
  description = "Specify the Storage Account Replication Type."
  default     = "GRS"
}

variable "sql_server_storage_account_access_key_for_secondary" {
  type        = bool
  description = "This value has to be true when we want to sync with secondary server"
  default     = false
}

variable "sql_server_retention" {
  type        = number
  description = "Specify the retention in days for SQL Server"
  default     = 6
}


# SQL Version
variable "sqlserverprimaryversion" {
  type        = string
  description = "Specify the SQL version here."
  default     = "12.0"
}

# SQL username
variable "sqlserverprimaryusername" {
  type        = string
  description = "Specify the SQL username here."
  default     = "azure"
}

# SQL password
variable "sqlserverprimarypassword" {
  type        = string
  description = "Specify the SQL password here."
  default     = "Passw0rd"
}

variable "sqlServerPrimary_Tag" {
  type = map(string)
  default = {
    env : "dev"
  }
}