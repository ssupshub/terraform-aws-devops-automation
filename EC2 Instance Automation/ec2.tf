resource "aws_instance" "dev_ec2" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type

  tags = {
    Name = "DevOps-EC2"
  }
}
