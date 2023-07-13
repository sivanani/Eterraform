data "aws_security_group" "selected" {
    name ="allow-all"
  
}

output "security_group_id" {
  value = data.aws_security_group.selected.id
}

output "security_group_id" {
  value = data.aws_security_group.selected.name
}

output "security_group_id" {
  value = data.aws_security_group.selected.arn
}