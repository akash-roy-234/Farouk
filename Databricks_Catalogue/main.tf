module "databricks_permissions" {
  source = "./modules/databricks_permissions"

  adb_roles             = ["Contributor", "Reader"]  # Example roles for Databricks workspace
  adb_scope             = module.databricks_workspace.adb.id  # Ensure this references the correct ADB workspace ID
  adb_principal_id       = azurerm_databricks_workspace_access_connector.adb.identity[0].principal_id  # Fixed the reference

  notebook_roles        = ["Reader"]  # Example roles for Databricks notebooks
  notebook_scope        = module.databricks_workspace.adb.id  # Ensure this references the correct notebook or workspace ID
  notebook_principal_id = azurerm_user_assigned_identity.umi.principal_id  # Fixed the reference
}
