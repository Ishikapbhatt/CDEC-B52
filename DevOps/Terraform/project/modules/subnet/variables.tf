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
