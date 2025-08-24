terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
  }

backend "azurerm" {
    resource_group_name   = "achinta-app"
    storage_account_name  = "sadda099"
    container_name        = "terra"
    key                   = "action.tfstate"
}
}

provider "azurerm" {
  features {}
  subscription_id = "661ea49e-05d4-429e-8204-de0d46c539b5"
}

resource "azurerm_resource_group" "RG" {
  name     = "github-actions-rg"
  location = "West Europe" 
}
