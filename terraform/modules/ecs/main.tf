resource "aws_ecs_cluster" "cluster" {
  name = var.ecs_cluster_name
}

resource "aws_ecs_task_definition" "task" {
  family                   = var.ecs_task_definition_name
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"

  container_definitions = jsonencode([
    {
      name      = var.container_name,
      image     = var.image_uri,
      essential = true,
      portMappings = [
        {
          containerPort = 3000
          hostPort      = 3000
        }
      ]
    }
  ])

  execution_role_arn = var.ecs_execution_role_arn
}

resource "aws_ecs_service" "service" {
  name            = var.ecs_service_name
  cluster         = aws_ecs_cluster.cluster.id
  task_definition = aws_ecs_task_definition.task.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = [var.subnet_id]
    security_groups = [var.security_group_id]
  }
}