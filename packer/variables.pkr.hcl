variable "aws_profile" {
  type    = string
  default = "default"
}

variable "company" {
  type    = string
  default = "tlabs"
}

variable "ami_name" {
  type    = string
  default = "wordpress"
}

variable "region" {
  type    = string
  default = "ap-southeast-4"
}

variable "instance_type" {
  type    = string
  default = "t4g.micro"
}
