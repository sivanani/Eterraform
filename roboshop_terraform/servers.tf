data "aws_ami" "centos" {
    owners = ["973714476881"]
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
  
}

variable "instance_type" {
   default = "t3.micro"
}

resource "aws_instance" "frontend" {
  ami = data.aws_ami.centos.image_id
  instance_type = var.instance_type

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mongodb" {
  ami = data.aws_ami.centos.image_id
  instance_type = var.instance_type

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "frontend" {
 zone_id = "Z05651432BEIDAOZH30YR"
 name = "frontend-dev.devopsr72.online"
 type = "A"
 ttl = 30
 records = [aws_instance.frontend.private_ip] 
}

resource "aws_route53_record" "mongodb" {
 zone_id = "Z05651432BEIDAOZH30YR"
 name = "mongodb-dev.devopsr72.online"
 type = "A"
 ttl = 30
 records = [aws_instance.mongodb.private_ip] 
}


