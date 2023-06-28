variable "sample_number" {
  default = 100
}

variable "sample_string" {
  default = "hello world"
}

output "sample_string" {
  value = var.sample_string
}

output "sample_number" {
  value = var.sample_number
}