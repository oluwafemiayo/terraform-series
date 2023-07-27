resource "aws_instance" "ec2vm" {
  ami           = "ami-0905a3e5209c52e35"  
  instance_type = "t2.micro"
  user_data     = file("${path.module}/app-install.sh")
  tags = {
    "Name"      = "Ec2 Demo"
  }
}
