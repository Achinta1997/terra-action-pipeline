terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
  }

backend "azurerm" {
    resource_group_name   = "achinta-dev"
    storage_account_name  = "terrastorage1"
    container_name        = "terra-remote"
    key                   = "terraformaction.tfstate"
}
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "RG" {
  name     = "github-actions-rg"
  location = "West Europe" 
}

resource "azurerm_resource_group" "RG1" {
  name     = "github-actions-rg1"
  location = "West Europe" 
}
