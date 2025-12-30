resource "aws_eks_cluster" "cluster" {
  name     = "devops-eks"
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids = ["subnet-xxx", "subnet-yyy"]
  }
}
