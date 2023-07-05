output "sample_list" {
  value = var.sample_list[1]
}

output "sample_string" {
  value = var.sample_string
}

output "sample_number" {
  value = var.sample_number
}

output "fruits" {
  value = length(var.fruits)
}

output "map_list" {
  value = var.map_list
}