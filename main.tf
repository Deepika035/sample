terraform {
  required_version = ">= 0.13"
  required_providers {
    okta = {
      source = "okta/okta"
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
 
# resource "okta_user" "test" {
#   first_name           = "Terraform"
#   last_name            = "Test"
#   login                = "terraform.test@gmail.com"
#   email                = "terraform.test@gmail.com"
# }
# resource "okta_group_memberships" "user_in_existing_group" {
#   group_id = "00g288wbw0wa3EMcx0h8"
#   users = ["00u288vyd52Z57LGF0h8"]
# }

# 3. Create an Okta group

resource "okta_group" "test_group" {
  name        = "terraform-team"
  description = "terraform testing POC group"
}
