resource "aws_instance" "roboshop" {
    vpc_security_group_ids = [aws_security_group.roboshop-all.id]
    count = 11
    ami = var.ami_id
    instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"
    tags = {
      Name = var.instance_names[count.index]

    }
}


resource "aws_route53_record" "www" {
    count = 11
    zone_id = var.zone_id
    name = "${var.instance_names[count.index]}.${var.domain_name}"
    type = "A"
    ttl = 1
    records = [var.instance_names[count.index] == "web" ? aws_instance.roboshop[count.index].public_ip : aws_instance.roboshop[count.index].private_ip]
  
}