# modules/databricks_permissions/variables.tf

variable "adb_roles" {
  description = "List of roles for granting permissions to the ADB workspace"
  type        = list(string)
  default     = ["Contributor", "Reader"]  # Example default roles
}

variable "adb_scope" {
  description = "The scope for the Azure Databricks workspace"
  type        = string
  default     = "/subscriptions/your-subscription-id/resourceGroups/your-resource-group/providers/Microsoft.Databricks/workspaces/your-databricks-workspace"
}

variable "adb_principal_id" {
  description = "Principal ID for the Azure Databricks Managed Identity"
  type        = string
  default     = "00000000-0000-0000-0000-000000000000"  # Example default Managed Identity
}

variable "notebook_roles" {
  description = "List of roles for granting permissions to Databricks notebooks"
  type        = list(string)
  default     = ["Reader"]  # Example default role for notebooks
}

variable "notebook_scope" {
  description = "The scope for the Azure Databricks notebooks"
  type        = string
  default     = "/subscriptions/your-subscription-id/resourceGroups/your-resource-group/providers/Microsoft.Databricks/workspaces/your-databricks-workspace"
}

variable "notebook_principal_id" {
  description = "Principal ID for the Azure Databricks notebook Managed Identity"
  type        = string
  default     = "00000000-0000-0000-0000-000000000000"  # Example default principal ID
}
