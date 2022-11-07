module "mongodb_cluster" {
  source = "./mongodb_cluster"

  # Name of the environment you'd like to use or create
  environment_name = var.environment_name
  # Create new Environment
  create_environment = var.create_environment
  # Name of Aptible Stack if you're creating a new environment
  aptible_stack = var.aptible_stack
  # Name of the person creating the instances
  creator = var.creator

  # Primary DB Conainter Size
  container_size = var.container_size
  # Primary DB Disk Size
  container_disk_size = var.container_disk_size
  # Replica Count
  # If your count is even for replica count it will add 1.
  replica_count = var.replica_count % 2 == 0 ? var.replica_count + 1 : var.replica_count
}