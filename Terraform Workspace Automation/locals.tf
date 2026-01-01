locals {
  instance_type = terraform.workspace == "prod" ? "t3.medium" : "t2.micro"
}
