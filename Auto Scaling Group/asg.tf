resource "aws_launch_template" "lt" {
  name_prefix   = "devops-lt"
  image_id      = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "asg" {
  desired_capacity = 2
  max_size         = 4
  min_size         = 1
  launch_template {
    id      = aws_launch_template.lt.id
    version = "$Latest"
  }
  vpc_zone_identifier = ["subnet-xxxx"]
}
