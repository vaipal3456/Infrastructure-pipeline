resource "azurerm_storage_container" "cont-app" {
  for_each = var.dev-container
  name     = each.value.name
  storage_account_name = each.value.storage_account_name
  container_access_type = each.value.container_access_type
}