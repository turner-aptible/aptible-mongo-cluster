variable "create_environment" {
  description = "Would you life to create a new environment or use existing one?"
  type        = bool
}

variable "environment_name" {
  description = "Name of the environment you'd like to use."
  type        = string
}

variable "aptible_stack" {
  description = "Name of the stack you'd like to use when creating an environment."
  type        = string
}

variable "creator" {
  description = "Name of the person creating this instance. E.G. 'jsmith, mmyers, alincoln'"
  type        = string
}

variable "container_size" {
  description = "Size of the MongoDB instance containers."
  type        = number
}

variable "container_disk_size" {
  description = "Size of the MongoDB disks."
  type        = number
}

variable "replica_count" {
  description = "Number of replicas you'd like for the Mongo Cluster."
  type        = number
}