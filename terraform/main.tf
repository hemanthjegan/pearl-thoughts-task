module "vpc" {
  source = "./modules/vpc"
  vpc_name = var.vpc_name
  subnet_name = var.subnet_name
}

module "ecs" {
  source = "./modules/ecs"
  ecs_cluster_name = var.ecs_cluster_name
  ecs_task_definition_name = var.ecs_task_definition_name
  container_name = var.container_name
  image_uri = var.image_uri
  ecs_service_name = var.ecs_service_name
  ecs_execution_role_arn = var.ecs_execution_role_arn
  subnet_id = module.vpc.aws_subnet_id
  security_group_id = module.vpc.aws_security_group_id
}