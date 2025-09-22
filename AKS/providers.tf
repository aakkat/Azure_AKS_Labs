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
}

provider "azurerm" {
   features {}
}

# AzAPI provider for advanced actions like generateKeyPair
provider "azapi" {
  # Provider authentication will be handled through GitHub Actions environment variables:
  # AZURE_CLIENT_ID
  # AZURE_CLIENT_SECRET
  # AZURE_SUBSCRIPTION_ID
  # AZURE_TENANT_ID
  use_cli = true
}

# Random provider for generating random names
provider "random" {}

# Time provider if you use delays or waits
provider "time" {}
