#Terraform Output file 
#Ec2 Instance Public IP address
output "instance_public_ip" {
  description = "Instance public IP address"
  value       = aws_instance.ec2vm.public_ip
}

#Ec2 Instance Public DNS
output "instance_public_dns" {
  description = "Instance public DNS"
  value       = aws_instance.ec2vm.public_dns
}
