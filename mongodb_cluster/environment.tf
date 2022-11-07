resource "aptible_environment" "mongo_environment" {
  count = var.create_environment ? 1 : 0
  handle = var.environment_name
  stack_id = data.aptible_stack.apt_env[0].stack_id
}