resource "aws_instance" "ec2vm" {
  ami           = data.aws_ami.amzlinux2.id 
  instance_type = var.instance_type_map["dev"]
  user_data     = file("${path.module}/app-install.sh")
  key_name      = var.instance_keypair
  #count        = 2
  for_each      = toset(data.aws_availability_zones.azs.names)
  availability_zone           = each.key
  associate_public_ip_address = true 
  vpc_security_group_ids      = [ aws_security_group.allow_ssh.id, aws_security_group.allow_web_traffic.id ]
  tags = {
    "Name"      = "RGF_Server-${each.key}"
  }
}
