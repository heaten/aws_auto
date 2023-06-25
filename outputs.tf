output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.ec2_instance[0].id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.ec2_instance[0].associate_public_ip_address
}


