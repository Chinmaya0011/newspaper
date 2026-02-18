terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

# Create a GitHub repository
resource "github_repository" "scan_repo" {
  name        = "my-scanned-repo"
  description = "Repository with code scanning enabled"
  visibility  = "public"

  auto_init = true
}

# Enable Code Scanning (CodeQL)
resource "github_repository_ruleset" "code_scanning" {
  name        = "code-scanning-rules"
  repository  = github_repository.scan_repo.name
  target      = "branch"
  enforcement = "active"

  conditions {
    ref_name {
      include = ["~DEFAULT_BRANCH"]
    }
  }
}
