resource "github_repository" "project" {
  count        = var.mirror_to_github ? 1 : 0
  name         = var.name
  description  = var.description
  homepage_url = var.github_mirror_homepage_url

  visibility = var.github_mirror_visibility
}

resource "gitlab_project_mirror" "this" {
  count                   = var.mirror_to_github ? 1 : 0
  project                 = gitlab_project.project.id
  only_protected_branches = true
  mirror_branch_regex     = var.github_mirror_branch_regex
  keep_divergent_refs     = var.keep_divergent_refs
  url = replace(
    github_repository.project[0].http_clone_url,
    "https://",
    "https://${var.github_mirror_username}:${var.github_mirror_token}@",
  )
  auth_method = "password"
}