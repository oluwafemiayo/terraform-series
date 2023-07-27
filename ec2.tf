resource "aws_instance" "ec2vm" {
  ami           = data.aws_ami.amzlinux2.id 
  instance_type = var.instance_type
  user_data     = file("${path.module}/app-install.sh")
  key_name      = var.instance_keypair
  associate_public_ip_address = true 
  vpc_security_group_ids      = [ aws_security_group.allow_ssh.id, aws_security_group.allow_web_traffic.id ]
  tags = {
    "Name"      = "Ec2 Demo"
  }
  
}
