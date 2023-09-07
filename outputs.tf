output "public_ip" {
    value = aws_instance.TF-testing.public_ip
  
}

output "private_ip" {
    value = aws_instance.TF-testing.private_ip
  
}

output "security_groups" {
    value = aws_instance.TF-testing.security_groups
  
}