variable "ami" {
    description = "Dynamically allocating AMI"
    type = string
}
data "aws_ami" "ubuntu_ami" {
    most_recent = true
    owners = [ "amazon" ]
    filter {
    name   = "name"
    values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]
  }
}
variable "aws_region" {
    type = string
    default = "us-east-1"
  
}

variable "instance_type" {
    type = string
    default = "t2-small"
}

variable "key_name" {
    type = string
    default = "shareef-ec2"
}

variable "instance_name" {
    description = "value of the name tagged to ec2 instance"
    type = list(string)
    default = ["instance1", "instance2", "instance3", "instance4", "instance5", "instance6", "instance7", "instance8","instance9","instance10"]
}