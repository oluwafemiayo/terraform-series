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

#AWS EC2 Instance type - Using Map
variable "instance_type_map" {
  description = "EC2 Instance type"
  type        = map(string)
  default     = {
    "dev"     = "t2.micro"
    "qa"      = "t3.small"
    "prod"    = "t2.medium"
  }
}

#Using List
# variable "instance_type_list" {
#   description = "EC2 Instance type"
#   type        = list(string)
#   default     = [ "t2.micro","t3.small","t2.medium"]
# }
