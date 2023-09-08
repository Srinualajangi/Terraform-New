resource "aws_instance" "Condition-testing" {
    ami = var.ami_id
    instance_type = var.instance_name == "MongoDB" ? "t3.medium" : "t2.micro"
    tags = var.tags
}

resource "aws_instance" "Condition-testing" {
    ami = var.ami_id
    instance_type = var.instance_name == "MongoDB" ? "t3.medium" : "t2.micro"
    tags = var.tags
}