### OUTPUTS ###

output "mongo_strings" {
  value = random_string.mongo_id.*.result
}