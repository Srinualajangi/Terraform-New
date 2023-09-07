resource "aws_instance" "TF-testing" {
    ami = var.ami_id
    instance_type = "t2.micro"
    tags = var.tags
  
}
    
