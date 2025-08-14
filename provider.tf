terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.38.1"
    }
  }
  backend "azurerm" {
    subscription_id      = "b02b567a-e4cb-4c73-975e-4664c82c8fc3"
    resource_group_name  = "rg-ajay"
    storage_account_name = "tfstateajay"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

  }
}
provider "azurerm" {
  features {
  }
  subscription_id = "b02b567a-e4cb-4c73-975e-4664c82c8fc3"
}
