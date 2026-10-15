# aws provider config
provider "aws" {
    region = "us-east-1"
}

#create ec2 instance
resource "aws_instance" "prod_instance" {
    ami           = "ami-004d1eaf8eaa0107d" # Amazon Linux 2 AMI
    instance_type = "t3.micro"
    key_name      = "b18awskey" # Replace with your key pair name
    tags = {
        Name = "MyEC2Instance"
    }
}

terraform.init

