terraform {
  required_version = "> 1.0.0"

  required_providers {
    # Provider Documentation: https://registry.terraform.io/providers/hashicorp/aws/latest
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "~> 17.0"
    }
    github = {
      source  = "integrations/github"
      version = "6.6.0"
    }
  }
}
