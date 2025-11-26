provider "aws" {
  region = "us-east-1" # Replace with your desired region
}

resource "aws_instance" "docker_host" {
  ami           = "ami-0abcdef1234567890" # Replace with a suitable AMI ID for your region and OS
  instance_type = "t2.micro"             # Choose an appropriate instance type
  key_name      = "your-ssh-key"         # Replace with your SSH key pair name
  security_groups = ["your-security-group"] # Replace with your security group name

  user_data = file("install_docker.sh")

  tags = {
    Name = "DockerHost"
  }
}
