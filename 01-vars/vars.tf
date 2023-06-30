variable "sample_number" {
  default = 100
}

variable "sample_string" {
  default = "hello world"
}

variable "sample_list" {
  default = [
    100,
    2.5,
    "hello",
    true,
    123
  ]
  
}

output "sample_list" {
  value = var.sample_list[1]
}


output "sample_string" {
  value = var.sample_string
}

output "sample_number" {
  value = var.sample_number
}