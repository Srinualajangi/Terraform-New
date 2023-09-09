resource "aws_instance" "count" {
    count = 10
    ami = var.ami_id
    instance_type = var.instances_name[count.index] == "MongoDB" || var.instances_name[count.index] == "MySQL" ? "t3.medium" : "t2.micro"
    tags = {
     Name = var.instances_name[count.index]
    }
}
resource "aws_route53_record" "record" {
    count = 10
    zone_id = var.zone_id
    name = "${var.instances_name[count.index]}.${var.domain}"
    type = "A"
    ttl = 1
    records = [aws_instance.count[count.index].private_ip]

}
