output "Instance_Ip_address" {
    //value = aws_instance.my_instance[*].public_ip
    value = [for instance in aws_instance.my_instance : instance.public_ip]
    description = "Public ip address of ec2 instance."
}