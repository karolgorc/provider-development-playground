locals {
  terraform_service_account = var.terraform_service_account
}

provider "google" {
  alias = "impersonate"
  scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/userinfo.email",
  ]
}

data "google_service_account_access_token" "default" {
  provider               = google.impersonate
  target_service_account = local.terraform_service_account
  scopes                 = ["userinfo-email", "cloud-platform"]
  lifetime               = "3600s"
}

# Uncomment if you need to use key instead of impersonation

# provider "google" {
#   credentials = file("key.json")
# }

terraform {
  required_providers {
    google = {
      version = ">6.0"
    }
    google-beta = {
      version = ">6.0"
    }
  }
  required_version = "> 1.4.4"
}
