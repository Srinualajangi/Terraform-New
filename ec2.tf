resource "aws_instance" "TF-testing" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
  
}
    
