output "publicip" {
  value = aws_instance.devo.public_ip
  description = "this printing the values of output"
}


output "privateip" {
    value = aws_instance.devo.private_ip
}