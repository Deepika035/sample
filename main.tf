terraform {
  required_version = ">= 0.13"
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "4.9.1"
    }
  }
}

# Configure the Okta provider
provider "okta" {
  org_name  = "doosan"
  base_url  = "oktapreview.com"
  api_token = "00nkE3xHVLURZJC-FVYbb2LYTyLM4HEXZWJ0AODQ3t"
}

resource "okta_user" "test" {
  first_name = "Terraform"
  last_name  = "Test"
  login      = "terraform.test@gmail.com"
  email      = "terraform.test@gmail.com"
}