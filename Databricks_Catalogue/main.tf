module "databricks_permissions" {
  source = "./modules/databricks_permissions"

  # Roles to assign for the ADB workspace
  adb_roles = ["Contributor", "Reader"]  # Replace with actual roles as required

  # Databricks workspace scope (the ID of the workspace)
  adb_scope = module.databricks_workspace.adb.id  # Ensure this references the correct workspace scope

  # Principal ID for the Managed Identity used by Databricks
  adb_principal_id = azurerm_databricks_workspace_access_connector.adb.identity[0].principal_id  # Fixed the reference

  # Roles to assign for Databricks notebooks
  notebook_roles = ["Reader"]  # Replace with actual roles for notebooks

  # Notebook scope (workspace ID or specific resource)
  notebook_scope = module.databricks_workspace.adb.id  # Ensure this references the correct scope for notebooks

  # Principal ID for the Managed Identity used by notebooks
  notebook_principal_id = azurerm_user_assigned_identity.umi.principal_id  # Fixed the reference
}