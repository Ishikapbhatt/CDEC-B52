resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.vpc_name
  }
}
root@ip-172-31-42-50:~/CDEC-B52/DevOps/Terraform/project/modules/vpc# cat main.tf 
resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.vpc_name
  }
}
