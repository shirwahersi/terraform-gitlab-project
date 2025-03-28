# terraform-gitlab-project

Terraform module for managing gitlab projects

## Usage

### basic example

A basic example can be found at [examples/basic](examples/basic).

```hcl
module "terraform-gitlab-project" {
  source  = "app.terraform.io/example_corp/vpc/aws"
}
```


## Makefile Targets

```text
Available targets:

  all                                 Run install and lint
  install                             Initialize and install pre-commit
  lint                                Lint terraform code
  test                                Run basic and complete example tests
  test-basic                         Run basic example test
  test-complete                       Run complete example test
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.10.5 |
| aws | >= 2.70.0 |

## Providers

No provider.

## Inputs

No input.

## Outputs

| Name | Description |
|------|-------------|
| hello\_world | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
