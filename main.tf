resource "gitlab_project" "project" {
  name           = var.name
  description    = var.description
  namespace_id   = var.namespace_id
  default_branch = var.default_branch

  only_allow_merge_if_pipeline_succeeds            = var.only_allow_merge_if_pipeline_succeeds
  only_allow_merge_if_all_discussions_are_resolved = var.only_allow_merge_if_all_discussions_are_resolved
  remove_source_branch_after_merge                 = var.remove_source_branch_after_merge
  visibility_level                                 = var.visibility_level
  initialize_with_readme                           = var.initialize_with_readme
  auto_devops_enabled                              = var.auto_devops_enabled
}