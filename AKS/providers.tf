terraform {
  required_version = ">=1.0"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "CloudQuickLabsAak"
    
    workspaces {
        name = "AzureAKSLabs"
    }
  }
}
provider "azurerm" {
   features {}
   use_oidc = true
   tenant_id = "07fc8f44-8a45-4e66-973d-705143cdbdd1"
   subscription_id = "94ef7338-97fb-4eba-8042-ef97ff5cebd4"
   client_id = "8b939382-f5c5-4581-8ad0-9573ad670b19"
   client_secret = "aAg8Q~7kgbpY6KBi3Riha5kfCQrxlbn7re-nadkp"
}

# AzAPI provider for advanced actions like generateKeyPair
provider "azapi" {
  use_oidc = true
  tenant_id = "07fc8f44-8a45-4e66-973d-705143cdbdd1"
  subscription_id = "94ef7338-97fb-4eba-8042-ef97ff5cebd4"
  client_id = "8b939382-f5c5-4581-8ad0-9573ad670b19"
  client_secret = "aAg8Q~7kgbpY6KBi3Riha5kfCQrxlbn7re-nadkp"
}

# Random provider for generating random names
provider "random" {}

# Time provider if you use delays or waits
provider "time" {}
