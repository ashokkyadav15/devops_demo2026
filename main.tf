provider "azurerm" {

  features {}
 
subscription_id = "b5f22164-a376-43b3-96c1-58d4aa9fb7a6"

tenant_id       = "50cd50eb-068d-4db6-b072-2b3290ff2fe6"

client_id       = "fb3d693e-fba0-4ff8-ae9f-0f295c93d6ef"

client_secret   = "f45f20bd-565b-4917-ae0e-4c2f2f9db314"

}
 
resource "azurerm_resource_group" "ay" {

  name     = "ashok-rg-1"

  location = "eastus"

}
 
template ---terraform {

  required_version = "1.14.6"
 
  cloud {

    organization = "AY_Devopsdemo"
 
    workspaces {

      name = "workplace_demo"

    }

  }

}
 
