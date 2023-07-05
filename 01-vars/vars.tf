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

variable "map_list" {
  default = {
    string="hello",
    boolean=true,
    number=100
  }
}

variable "fruits" {
  default = ["apple","orange","banana"]  
}