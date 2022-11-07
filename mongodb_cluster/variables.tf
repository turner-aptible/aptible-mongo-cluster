variable "create_environment" {
 description = "Would you life to create a new environment or use existing one?"
 type = bool
 default = false
}

variable "environment_name" {
  description = "Name of the environment you'd like to use."
  type = string
}

variable "aptible_stack" {
  description = "Name of the stack you'd like to use when creating an environment."
  type = string
  default = " "
}

variable "creator" {
  description = "Name of the person creating this instance. E.G. 'jsmith, mmyers, alincoln'"
  type = string
}

variable "primary_container_size" {
  description = "Size of the primary MongoDB instance container."
  type = number
}

variable "primary_disk_size" {
  description = "Size of the primary MongoDB disk."
  type = number
}

variable "replica_count" {
  description = "Number of replicas you'd like for the Mongo Cluster."
  type = number
}