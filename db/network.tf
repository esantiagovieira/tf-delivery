resource "aws_db_subnet_group" "subnet-rds" {
  name = "subnet-rds-${var.projectName}"
  subnet_ids = aws_subnet.private_subnets[*].id
}