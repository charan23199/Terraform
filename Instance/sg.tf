resource "aws_security_group" "roboshop-all" {
  name = var.sg-name
  description = "allow TLS inbound traffic"
  
  ingress {
    description = "Allow all ports"
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "roboshop-all-aws"
  }
}
