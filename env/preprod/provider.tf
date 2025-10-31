terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }



  required_version = "1.11.1"

  backend "azurerm" {
    resource_group_name  = "ankur_rg_dont_delete"
    storage_account_name = "todoappaestorage1"
    container_name       = "todocontainer"
    key                  = "dev.tfstate"
    subscription_id      = "b43bd80e-9eef-4206-b932-7dba68f2f340"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b43bd80e-9eef-4206-b932-7dba68f2f340"
}
