#Terraform Output file 
#Ec2 Instance Public IP address
output "instance_public_dns" {
  description = "Instance public DNS"
  value       = [for instance in aws_instance.ec2vm: instance.public_dns ]
}


#Ec2 Instance Public DNS
output "instance_public_ip" {
  description = "Instance public IP address"
  value       = aws_instance.ec2vm[*].public_ip
}

#value = [for instance in aws_instance.ec2vm.public_dns: instance_public_ip ] #Loop with list
#value = {for instance in aws_instance.ec2vm.public_dns: instance_id => instance.public_ip }  #map
#value = [for instance in aws_instance.ec2vm.public_dns: instance_public_ip ]  #list