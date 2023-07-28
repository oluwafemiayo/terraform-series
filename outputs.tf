#Terraform Output file 
#Ec2 Instance Public IP address  #Loop with list
output "instance_public_dns" {
  description = "Instance public DNS"
  value       = [for instance in aws_instance.ec2vm: instance.public_dns ]
}


#Ec2 Instance Public DNS #splat
output "instance_public_ip" {
  description = "Instance public IP address"
  value       = [for instance in aws_instance.ec2vm: instance.public_ip ]
  #value       = aws_instance.ec2vm[*].public_ip
}

#value = [for instance in aws_instance.ec2vm.public_dns: instance.public_ip ] #Loop with list
#value = {for instance in aws_instance.ec2vm.public_dns: instance_id => instance.public_ip }  #map
#value = [for instance in aws_instance.ec2vm.public_dns: instance_public_ip ]  #list

# output "ec2-az0" {
#   value    = { for az, info in data.aws_ec2_instance_type_offerings.ins_type:
#    az => info.instance_types }
# }

# output "ec2-az1" {
#   value    = { for az, info in data.aws_ec2_instance_type_offerings.ins_type:
#    az => info.instance_types if length(info.instance_types) != 0}
# }

output "ec2-az2" {
  value    = keys({ for az, info in data.aws_ec2_instance_type_offerings.ins_type:
   az => info.instance_types if length(info.instance_types) != 0})
}

# output "ec2-az3" {
#   value    = keys({ for az, info in data.aws_ec2_instance_type_offerings.ins_type:
#    az => info.instance_types if length(info.instance_types) != 0})[1]
# }