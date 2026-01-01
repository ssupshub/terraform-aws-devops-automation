resource "aws_instance" "env_ec2" {
  ami           = "ami-0c02fb55956c7d316"   #your ami id
  instance_type = local.instance_type
}
