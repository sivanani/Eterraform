resource "aws_instance" "web" {

  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.small"
}

resource "null_resource" "null" {
  count = 10
}