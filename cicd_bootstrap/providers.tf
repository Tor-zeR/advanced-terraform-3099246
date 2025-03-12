# https://developer.hashicorp.com/terraform/language/providers/requirements
terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.38.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.5"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"  # Updated to a newer, compatible version
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"  # Updated to a newer, compatible version
    }
  }
}

provider "tfe" {
  # Configuration options
  token = var.tf_cloud_token
}