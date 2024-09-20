#
# Creates a resource group for sit722week09task05 in your Azure account.
#
resource "azurerm_resource_group" "sit722week09task05" {
  name     = var.app_name
  location = var.location
}
