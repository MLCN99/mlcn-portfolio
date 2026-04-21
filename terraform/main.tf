#Create a Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.env_prefix
  location = "East Asia"
}

resource "azurerm_static_web_app" "example" {
  name                = "${var.env_prefix}-Portfolio-App"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}