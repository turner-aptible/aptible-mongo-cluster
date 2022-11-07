resource "random_string" "mongo_id" {
  count =  var.replica_count + 1
  length   = 6
  special  = false
  lower    = true
  upper    = false
}

### MONGODB AND REPLICAS ###

resource "aptible_database" "mongo_db_cluster" {
  env_id         = var.create_environment ? aptible_environment.mongo_environment[0].env_id : data.aptible_environment.apt_env[0].env_id 
  handle         = "${lower(var.creator)}-mongodb-${random_string.mongo_id[0].result}"
  database_type  = "mongodb"
  container_size = var.primary_container_size
  disk_size      = var.primary_disk_size
}

resource "aptible_replica" "mongo_db_cluster" {
  count = var.replica_count
  env_id              = var.create_environment ? aptible_environment.mongo_environment[0].env_id : data.aptible_environment.apt_env[0].env_id 
  primary_database_id = aptible_database.mongo_db_cluster.database_id
  handle              = "${lower(var.creator)}-mongodb-${count.index}-replica-${random_string.mongo_id[count.index + 1].result}"
  container_size      = var.replica_container_size
  disk_size           = var.replica_disk_size
}
