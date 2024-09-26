resource "azurerm_network_interface" "network_interface" {

  resource_group_name = var.resource_group_name
  location            = var.location

  name                          = var.name
  ip_forwarding_enabled          = var.enable_ip_forwarding
  accelerated_networking_enabled = var.enable_accelerated_networking

  dynamic "ip_configuration" {

    for_each = var.ip_configurations
    content {
      name                          = ip_configuration.key
      primary                       = lookup(ip_configuration.value, "primary", false)
      subnet_id                     = ip_configuration.value.subnet_id
      private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation
      
    }
  }

  tags = var.tags
}

output "network_interface" {
  value = azurerm_network_interface.network_interface
}
