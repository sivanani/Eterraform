resource "null_resource" "fruits" {

  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo fruit name - ${each.key} - ${each.value}"
  }
  
}

resource "null_resource" "fruits1" {

  for_each = var.fruits1

  provisioner "local-exec" {
    command = "echo fruit name - ${each.key["name"]} - ${each.value["count"]}"  
  }
  
}

variable "fruits" {
  default = {
    apple=10
    orange=200
    banana =300
  }
}

variable "fruits1" {
  default = {
    apple={
      name = "apple"
      count=10
    }
     orange={
      name = "orange"
      count=200
    }
     banana={
      name = "apple"
      count=10
    }
  }
  
}