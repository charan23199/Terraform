variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

# variable "instance_type" {
#     type = string
#     default = "t2.micro"
# }

variable "instance_names" {
  type = list
  default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "zone_id" {
  default = "Z05510941RIBGWP3ONV2Y"
}

variable "domain_name" {
  default = "devtechnologies.online"
}

variable "sg-name" {
    type = string
    default = "roboshop-all-aws"
  
}

# variable "tags" {
#     type = map 
#     default = {
#         Name = "Hello Terraform"
#         Project = "Roboshop"
#         Environment = "Dev"
#         Component = "Web"
#     }
    
# }

# variable "sg-name" {
#     type = string
#     default = "roboshop-all-aws"
  
# }