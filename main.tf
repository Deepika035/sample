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

# Assign the new user to an existing Okta group
#resource "okta_group_memberships" "assign_user_to_group" {
 # group_id = "00g280b1qlf3S7Kjm0h8"   # Replace with the actual group ID
  #users    = [okta_user.test2.id] # Assign the newly created user to the group
#}
# 3. Create an Okta group

resource "okta_group" "test_group" {
  name        = "terraform-team"
  description = "terraform testing POC group"
}

# 3. Create an OAuth 2.0 application in Okta with a description
# resource "okta_app_oauth" "tftest_app" {
#   label           = "Test OAuth App"    # Application name
#   type            = "web"                  # Application type (e.g., "browser", "service", "native", "web")
#   grant_types     = ["authorization_code", "refresh_token"]
#   redirect_uris   = ["https://yourapp.com/callback"]
#   response_types  = ["code"]
#   token_endpoint_auth_method = "client_secret_post"


  # Optional: Assign the app to an existing Okta group
  #groups = [okta_group.test_group.id] # Assigns this app to the group created earlier
# }

# 5. Assign the user to the application
# resource "okta_app_user" "user_assignment" {
#   user_id = "00u288vyd52Z57LGF0h8"               # The user created above
#   app_id  = "0oa288x61a3dcA0tc0h8"     # The OAuth app created above
#   username = "terraform.test@gmail.com"
# }

# 4. Assign the existing group to the existing app
# resource "okta_app_group_assignment" "group_assignment" {
#   app_id  = "0oa288x61a3dcA0tc0h8"    # Existing application's ID
#   group_id = "00g288wbw0wa3EMcx0h8"# Existing group's ID
# }