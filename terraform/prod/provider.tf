terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.11.0"
    }
  }
  cloud {
    organization = "organization"
    workspaces {
    tags = ["ws1"]
  }
}
}

provider "azurerm" {
  features {}
}