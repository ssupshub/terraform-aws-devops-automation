resource "aws_lb" "app_lb" {
  name               = "devops-alb"
  load_balancer_type = "application"
  subnets            = ["subnet-xxxx", "subnet-yyyy"]
}
