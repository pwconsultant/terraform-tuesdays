terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "1.15.1"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"

    }

    azuread = {
      source = "hashicorp/azuread"
      version = "~> 1.0"
    }

  }
  backend "remote" {
    organization = "ned-in-the-cloud"

    workspaces {
      name = "terraform-tuesday-ado-setup"
    }
  }
}