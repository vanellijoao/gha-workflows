terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
  backend "gcs" {
    bucket = "nodis-terraform-github"
  }
}
