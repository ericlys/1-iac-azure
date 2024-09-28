resource "azurerm_resource_group" "rg" {
  name     = "eric-hmg"
  location = "brazilsouth"
  # lifecycle {
  #   prevent_destroy = true
  # }

  tags = {
    Iac = "True"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "eric-vnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]

  tags = {
    Iac = "True"
  }
}