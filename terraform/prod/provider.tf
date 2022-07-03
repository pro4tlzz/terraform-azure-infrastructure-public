terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.11.0"
    }
  }
  cloud {
    organization = "org"
    workspaces {
    tags = ["ws1"]
  }
}
}

provider "azurerm" {
  features {}
}