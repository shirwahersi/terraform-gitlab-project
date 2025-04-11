variable "name" {
  type        = string
  description = "The name of the project to be created. Must start with a lowercase or uppercase letter, digit, emoji, or underscore. Can also contain dots, pluses, dashes, or spaces."

  validation {
    condition     = can(regex("^[a-z0-9-_]*$", var.name))
    error_message = "Projects must be named in lowercase, using a-z, 0-9, and - (hyphen) symbols only."
  }
}

variable "description" {
  type        = string
  description = "(Optional) A description of the project."
  default     = ""
}

variable "default_branch" {
  type        = string
  description = "(Optional) The default branch the repository will use. Defaults to master."
  default     = "master"
}


variable "namespace_id" {
  type        = number
  description = "(Number) The namespace (group or user) of the project. Defaults to your user."
}

variable "only_allow_merge_if_all_discussions_are_resolved" {
  type        = bool
  description = "(Optional) Set to true if you want to allow merges only if all discussions are resolved."
  default     = true
}

variable "only_allow_merge_if_pipeline_succeeds" {
  type        = bool
  description = "(Optional) Set to true if you want to allow merges only if a pipeline succeeds."
  default     = true
}

variable "remove_source_branch_after_merge" {
  type        = bool
  description = "(Optional) Enable `Delete source branch` option by default for all new merge requests."
  default     = true
}

variable "visibility_level" {
  type        = string
  description = "(Optional) Set to `public` to create a public project. Valid values are `private`, `internal`, `public`."
  default     = "internal"
  validation {
    condition     = can(regex("^(private|internal|public)$", var.visibility_level))
    error_message = "Visibility level must be one of `private`, `internal`, or `public`."
  }
}

variable "initialize_with_readme" {
  type        = bool
  description = "(Optional) Set to true to initialize the project with a README."
  default     = true
}

variable "auto_devops_enabled" {
  type        = bool
  description = "(Optional) Set to true to enable Auto DevOps for the project."
  default     = false
}

variable "mirror_to_github" {
  type        = bool
  description = "(Optional) Set to true to mirror the project to GitHub."
  default     = false
}

variable "github_mirror_username" {
  type        = string
  description = "(Optional) The GitHub username to use for mirroring."
  default     = null
}

variable "github_mirror_token" {
  type        = string
  description = "(Optional) The GitHub token to use for mirroring."
  default     = null
  sensitive   = true
}

variable "github_mirror_branch_regex" {
  type        = string
  description = "(Optional) The regex to match branches to mirror to GitHub. Defaults to null."
  default     = null
}

variable "github_mirror_homepage_url" {
  type        = string
  description = "(Optional) The homepage URL for the GitHub repository."
  default     = null
}

variable "github_mirror_visibility" {
  type        = string
  description = "(Optional) The visibility of the GitHub repository. Valid values are `public`, `private`."
  default     = "public"

}

variable "keep_divergent_refs" {
  type        = bool
  description = "(Optional) Set to true to keep divergent refs in the mirror."
  default     = false
}