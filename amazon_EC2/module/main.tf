provider "aws" {
    region = var.aws_region  
}


resource "aws_instance" "my_instance" {
    count = 10
    ami = data.aws_ami.ubuntu_ami.id
    instance_type = var.instance_type
    key_name = var.key_name
    tags = {
        Name = element(var.instance_name, count.index)
    }
}

