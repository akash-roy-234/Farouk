terraform {
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.0"
    }
  }
}

provider "databricks" {
  host  = var.databricks_host
  token = var.databricks_token
}

# Fetching cluster information
data "databricks_clusters" "all_clusters" {}

# Output the cluster information
output "cluster_info" {
  value = data.databricks_clusters.all_clusters
}
