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
  primary_container_size = var.primary_container_size
  # Primary DB Disk Size
  primary_disk_size = var.primary_disk_size
  # Replica Count
  replica_count = var.replica_count
  # Replica DB Conainter Size
  replica_container_size = var.replica_container_size
  # Replica DB Disk Size
  replica_disk_size = var.replica_disk_size
}