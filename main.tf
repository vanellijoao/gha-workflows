variable "github_token" {}

locals {
  github_owner = "nodis-com-br"
  email_domain = "nodis.com.br"
}

provider "github" {
  owner = local.github_owner
  token = var.github_token
}

module "docker_image_workflow" {
  source       = "git@github.com:nodis-com-br/tf_modules.git//github_repository_file"
  topics       = ["docker-image"]
  file         = ".github/workflows/docker-image.yml"
  content      = file("src/docker-image.yml")
  owner        = local.github_owner
  email_domain = local.email_domain
}

module "go_application_workflow" {
  source       = "git@github.com:nodis-com-br/tf_modules.git//github_repository_file"
  topics       = ["vault-plugin"]
  file         = ".github/workflows/go-application.yml"
  content      = file("src/go-application.yml")
  owner        = local.github_owner
  email_domain = local.email_domain
}

module "helm_chart_workflow" {
  source       = "git@github.com:nodis-com-br/tf_modules.git//github_repository_file"
  topics       = ["helm-chart"]
  file         = ".github/workflows/helm-chart.yaml"
  content      = file("src/helm-chart.yaml")
  owner        = local.github_owner
  email_domain = local.email_domain
}

module "k8s_workload_workflow" {
  source       = "git@github.com:nodis-com-br/tf_modules.git//github_repository_file"
  topics       = ["deployment", "cronjob"]
  file         = ".github/workflows/k8s-workload.yml"
  content      = file("src/k8s-workload.yml")
  owner        = local.github_owner
  email_domain = local.email_domain
}

module "lua_package_workflow" {
  source       = "git@github.com:nodis-com-br/tf_modules.git//github_repository_file"
  topics       = ["kong-plugin"]
  file         = ".github/workflows/lua-package.yml"
  content      = file("src/lua-package.yml")
  owner        = local.github_owner
  email_domain = local.email_domain
}

module "python_package_workflow" {
  source       = "git@github.com:nodis-com-br/tf_modules.git//github_repository_file"
  topics       = ["python package", "python library"]
  file         = ".github/workflows/python-package.yml"
  content      = file("src/python-package.yml")
  owner        = local.github_owner
  email_domain = local.email_domain
}