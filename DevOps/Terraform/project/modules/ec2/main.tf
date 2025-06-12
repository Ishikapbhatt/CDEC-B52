resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.vpc_name
  }
}
root@ip-172-31-42-50:~/CDEC-B52/DevOps/Terraform/project/modules/vpc# cat outputs.tf 
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}
root@ip-172-31-42-50:~/CDEC-B52/DevOps/Terraform/project/modules/vpc# cat variables.tf 
variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}
root@ip-172-31-42-50:~/CDEC-B52/DevOps/Terraform/project/modules/vpc# cd ..
root@ip-172-31-42-50:~/CDEC-B52/DevOps/Terraform/project/modules# cd subnet/
root@ip-172-31-42-50:~/CDEC-B52/DevOps/Terraform/project/modules/subnet# cat main.tf 
resource "aws_subnet" "main" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
  availability_zone = var.az

  tags = {
    Name = var.subnet_name
  }
}
root@ip-172-31-42-50:~/CDEC-B52/DevOps/Terraform/project/modules/subnet# cat outputs.tf 
output "subnet_id" {
  description = "The ID of the subnet"
  value       = aws_subnet.main.id
}
root@ip-172-31-42-50:~/CDEC-B52/DevOps/Terraform/project/modules/subnet# cat variables.tf 
variable "vpc_id" {
  description = "ID of the VPC to associate the subnet with"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "az" {
  description = "Availability Zone for the subnet"
  type        = string
}

variable "subnet_name" {
  description = "Name tag for the subnet"
  type        = string
}
root@ip-172-31-42-50:~/CDEC-B52/DevOps/Terraform/project/modules/subnet# cd ..
root@ip-172-31-42-50:~/CDEC-B52/DevOps/Terraform/project/modules# cd ec2/
root@ip-172-31-42-50:~/CDEC-B52/DevOps/Terraform/project/modules/ec2# cat main.tf 
resource "aws_security_group" "allow_ssh_http" {
  name        = "allow_ssh_http"
  description = "Allow SSH and HTTP"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-sg"
  }
}

resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]

  tags = {
    Name = var.instance_name
  }
}
