﻿terraform {
  backend "local" {}
}

# Configure the Azure providers
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.40.0"
    }
  }

  required_version = ">= 1.1.0"
}

# Configure the Azure Provider

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}