

vpc_cidr          = "10.0.0.0/16"
vpc_name          = "student-vpc"

subnet_cidr       = "10.0.1.0/24"
availability_zone = "us-east-1a"
subnet_name       = "student-subnet"

ami_id            = "ami-020cba7c55df1f615"  # Replace with a valid AMI
instance_type     = "t2.micro"
instance_name     = "student-ec2"
