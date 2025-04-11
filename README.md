# terraform-gitlab-project

Terraform module for managing gitlab projects

## Usage

### basic example

```hcl
module "shirwalab_blog" {
  #checkov:skip=CKV_TF_1
  source                 = "git::https://gitlab.com/shirwalab_infrastructure/tf-modules/terraform-gitlab-project.git?ref=master"
  name                   = "shirwalab_blog"
  description            = "Code running shirwalab.net"
  visibility_level       = "private"
  namespace_id           = module.infrastructure.group_id
  mirror_to_github       = true
  github_mirror_username = "shirwahersi"
  github_mirror_token    = data.aws_secretsmanager_secret_version.github_token_version.secret_string
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > 1.0.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | 6.6.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 17.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 6.6.0 |
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_repository.project](https://registry.terraform.io/providers/integrations/github/6.6.0/docs/resources/repository) | resource |
| [gitlab_project.project](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project) | resource |
| [gitlab_project_mirror.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project_mirror) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_devops_enabled"></a> [auto\_devops\_enabled](#input\_auto\_devops\_enabled) | (Optional) Set to true to enable Auto DevOps for the project. | `bool` | `false` | no |
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | (Optional) The default branch the repository will use. Defaults to master. | `string` | `"master"` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) A description of the project. | `string` | `""` | no |
| <a name="input_github_mirror_token"></a> [github\_mirror\_token](#input\_github\_mirror\_token) | (Optional) The GitHub token to use for mirroring. | `string` | `null` | no |
| <a name="input_github_mirror_username"></a> [github\_mirror\_username](#input\_github\_mirror\_username) | (Optional) The GitHub username to use for mirroring. | `string` | `null` | no |
| <a name="input_initialize_with_readme"></a> [initialize\_with\_readme](#input\_initialize\_with\_readme) | (Optional) Set to true to initialize the project with a README. | `bool` | `true` | no |
| <a name="input_mirror_to_github"></a> [mirror\_to\_github](#input\_mirror\_to\_github) | (Optional) Set to true to mirror the project to GitHub. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the project to be created. Must start with a lowercase or uppercase letter, digit, emoji, or underscore. Can also contain dots, pluses, dashes, or spaces. | `string` | n/a | yes |
| <a name="input_namespace_id"></a> [namespace\_id](#input\_namespace\_id) | (Number) The namespace (group or user) of the project. Defaults to your user. | `number` | n/a | yes |
| <a name="input_only_allow_merge_if_all_discussions_are_resolved"></a> [only\_allow\_merge\_if\_all\_discussions\_are\_resolved](#input\_only\_allow\_merge\_if\_all\_discussions\_are\_resolved) | (Optional) Set to true if you want to allow merges only if all discussions are resolved. | `bool` | `true` | no |
| <a name="input_only_allow_merge_if_pipeline_succeeds"></a> [only\_allow\_merge\_if\_pipeline\_succeeds](#input\_only\_allow\_merge\_if\_pipeline\_succeeds) | (Optional) Set to true if you want to allow merges only if a pipeline succeeds. | `bool` | `true` | no |
| <a name="input_remove_source_branch_after_merge"></a> [remove\_source\_branch\_after\_merge](#input\_remove\_source\_branch\_after\_merge) | (Optional) Enable `Delete source branch` option by default for all new merge requests. | `bool` | `true` | no |
| <a name="input_visibility_level"></a> [visibility\_level](#input\_visibility\_level) | (Optional) Set to `public` to create a public project. Valid values are `private`, `internal`, `public`. | `string` | `"internal"` | no |

## Outputs

No outputs.