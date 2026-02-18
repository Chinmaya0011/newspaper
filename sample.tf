provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "insecure-rg"
  location = "East US"
}

# 1. VULNERABILITY: Storage Account with Public Access & No Encryption
resource "azurerm_storage_account" "insecure_storage" {
  name                     = "hackerbaitstorage"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  # High Risk: Public access is enabled
  allow_nested_items_to_be_public = true
  
  # High Risk: Using older TLS version
  min_tls_version = "TLS1_0"
}

# 2. VULNERABILITY: Network Security Rule allowing SSH from everywhere (0.0.0.0/0)
resource "azurerm_network_security_rule" "bad_ssh_rule" {
  name                        = "allow-ssh-all"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  
  # High Risk: Anyone on the internet can attempt to brute-force SSH
  source_address_prefix       = "*" 
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example.name
  network_security_group_name = "example-nsg"
}

# 3. VULNERABILITY: Database with No Managed Identity & Weak Password
resource "azurerm_mssql_server" "insecure_sql" {
  name                         = "vulnerable-sql-server"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  
  # High Risk: Hardcoded credentials (should use Key Vault or Managed Identity)
  administrator_login          = "adminuser"
  administrator_login_password = "Password123!" 
}

# 4. VULNERABILITY: SQL Firewall allowing all Azure internal traffic
resource "azurerm_mssql_firewall_rule" "open_firewall" {
  name             = "AllowAllAzure"
  server_id        = azurerm_mssql_server.insecure_sql.id
  
  # High Risk: "0.0.0.0" in Azure allows all Azure-internal resources to connect
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}
