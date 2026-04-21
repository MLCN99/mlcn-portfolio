# Configure the Azure Provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_terraform = ">= 1.3.0"
}

provider "azurerm" {
  features {}
}