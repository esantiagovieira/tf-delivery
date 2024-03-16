resource "aws_lb_target_group" "tg" {
  name        = var.projectName
  port        = 9000
  protocol    = "HTTP"
  target_type = "ip"

  vpc_id = aws_vpc.main.id

  health_check {
    path    = "/"
    port    = 9000
    matcher = "200"
  }
}