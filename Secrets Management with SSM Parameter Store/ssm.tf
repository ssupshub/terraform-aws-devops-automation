resource "aws_ssm_parameter" "db_password" {
  name  = "/dev/db/password"
  type  = "SecureString"
  value = "MySecretPassword"
}
