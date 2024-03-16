resource "aws_security_group" "sg" {
  name        = var.projectName
  description = "security group for fiap app"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "fiap app ingress sg"
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}