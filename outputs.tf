output "public_ip" {
    value = aws_instance.TF-testing.public_ip
  
}

output "private_ip" {
    value = aws_instance.TF-testing.private_ip
  
}