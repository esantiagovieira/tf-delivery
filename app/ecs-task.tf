resource "aws_ecs_task_definition" "task" {
  family = "TSK-${var.projectName}"
  container_definitions = jsonencode([
    {
      name      = var.projectName
      essential = true,
      image     = "${aws_ecr_repository.repository.repository_url}:latest",
      environment = [
        {
          name  = "DATABASE_URL"
          value = "mysql://root:segredo@localhost:3306/fiap"
        },
        {
          name  = "MYSQL_USER"
          value = "${var.rdsUser}"
        },
        {
          name  = "MYSQL_PASSWORD"
          value = "${var.rdsPass}"
        }
        ,
        {
          name  = "MYSQL_DB_NAME"
          value = "${var.dbName}"
        }
      ]
      logConfiguration = {
        logDriver = "awslogs"
        options = {
          awslogs-group         = "${aws_cloudwatch_log_group.cloudwatch-log-group.name}"
          awslogs-region        = "${var.regionDefault}"
          awslogs-stream-prefix = "ecs"
        }
      }
      portMappings = [
        {
          containerPort = 9000
          hostPort      = 9000
          protocol      = "tcp"
        }
      ]
    }
  ])
  network_mode = "awsvpc"

  requires_compatibilities = ["FARGATE"]

  execution_role_arn = var.ecsTaskExecutionRole

  memory = "4096"
  cpu    = "2048"

  #   depends_on = [aws_db_instance.rds]
}