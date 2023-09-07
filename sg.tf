resource "aws_security_group" "Testing" {
    name = var.sg_name
    description = "Allow all for practicing"

ingress {
    description = "Allowing All inbound Traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr
} 
  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = var.sg_cidr
  }
}