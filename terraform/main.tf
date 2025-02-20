module "prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sreedharsasi102++++@gmail.com"
    AccountName               = "prod"
    ManagedOrganizationalUnit = "sandbox"
    SSOUserEmail              = "sreedharsasi102++++@gmail.com"
    SSOUserFirstName          = "Sasidharan"
    SSOUserLastName           = "S"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "customizing dev account"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "default_customization"

}

module "dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sreedharsasi102+++++@gmail.com"
    AccountName               = "dev"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "sreedharsasi102+++++@gmail.com"
    SSOUserFirstName          = "Sasidharan"
    SSOUserLastName           = "S"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "dev"
  }

  account_customizations_name = "dev"
}
module "dev1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sreedharsasi102+afttest@gmail.com"
    AccountName               = "dev2"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "sreedharsasi102+afttest@gmail.com"
    SSOUserFirstName          = "AFTTest"
    SSOUserLastName           = "A"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "customizing dev account1"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "dev1"
  }

  account_customizations_name = "Sandbox"
}