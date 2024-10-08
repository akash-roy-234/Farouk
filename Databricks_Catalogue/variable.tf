# modules/databricks_permissions/variables.tf

variable "adb_roles" {
  description = "List of roles for granting permissions to the ADB workspace"
  type        = list(string)
}

variable "adb_scope" {
  description = "The scope for the Azure Databricks workspace"
  type        = string
}

variable "adb_principal_id" {
  description = "Principal ID for the Azure Databricks Managed Identity"
  type        = string
}

variable "notebook_roles" {
  description = "List of roles for granting permissions to Databricks notebooks"
  type        = list(string)
}

variable "notebook_scope" {
  description = "The scope for the Azure Databricks notebooks"
  type        = string
}

variable "notebook_principal_id" {
  description = "Principal ID for the Azure Databricks notebook Managed Identity"
  type        = string
}
