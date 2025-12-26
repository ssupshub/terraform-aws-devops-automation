resource "aws_iam_user" "dev_user" {
  name = "devops-user"
}

resource "aws_iam_user_policy" "s3_policy" {
  user = aws_iam_user.dev_user.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect   = "Allow"
      Action   = ["s3:*"]
      Resource = "*"
    }]
  })
}
