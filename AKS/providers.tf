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
  # Will inherit credentials from azurerm or Azure login in GitHub Actions
}

# Random provider for generating random names
provider "random" {}

# Time provider if you use delays or waits
provider "time" {}
