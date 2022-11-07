### ENV ###

data "aptible_environment" "apt_env" {
  count = var.create_environment ? 0 : 1
  handle = var.environment_name
}

data "aptible_stack" "apt_env" {
  count = var.create_environment ? 1 : 0
  name = var.aptible_stack
}