#Input Variables
#AWS Region
variable "aws_region" {
  description = "AWS Region where resource is being created"
  type        = string
  default     = "eu-west-3"
}

#AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

#AWS EC2 Key Pair
variable "instance_keypair" {
  description = "EC2 Instance Key Pair"
  type        = string
  default     = "terraform-key"
}

#AWS EC2 AMI
# variable "instance_ami" {
#   description = "EC2 Instance ami"
#   type        = string
#   default     = "ami-0905a3e5209c52e35"
# }