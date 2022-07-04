terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.11.0"
    }
  }
  cloud {
    organization = "Org"
    workspaces {
    tags = ["WS1"]
  }
}
}

provider "azurerm" {
  features {}
}