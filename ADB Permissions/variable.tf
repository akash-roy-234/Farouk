variable "databricks_host" {
  description = "Databricks workspace URL"
  type        = string
  default     = "https://<default-databricks-instance>.databricks.com"
}

# Variable for Databricks token
variable "databricks_token" {
  description = "Databricks access token"
  type        = string
  default     = "<Access token for databricks>"
}
