variable "ami_id" {
    default = "ami-03265a0778a880afb"    
}

variable "instances_name" {
    type = list
    default = ["MongoDB" , "Cart", "Catalogue", "User" , "Redis", "MySQL", "RabbitMQ", "Shipping", "Payment", "Web" ]
  
}
variable "zone_id" {
    default = "Z0205715205SMVXZPYKDQ"
  
}
variable "domain" {
  default = "glitztechs.com"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "sg_name" {
    default = "Testing"  
}

variable "sg_cidr" {
    type = list
    default = ["0.0.0.0/0"]
  
}

variable "tags" {
    type = map
    default = {
      Name = "Mongodb"
        Environment   = "DEV"
        terraform     = "true"
        Project       = "Roboshop"
        Component     = "Mongodb"  
    }
  
}
