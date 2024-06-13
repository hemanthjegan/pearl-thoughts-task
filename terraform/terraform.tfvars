# vpc
vpc_name = "pt-vpc"
subnet_name = "pt-sub"
igw_name = "pt-igw"
rt_name = "pt-rt"
sg_name = "pt-sg"

# ecs
ecs_cluster_name = "tf-cluster"
ecs_task_definition_name = "tf-td"
container_name = "tf-container"
image_uri = "992382373285.dkr.ecr.ap-south-1.amazonaws.com/test-images"
ecs_service_name = "tf-service"
ecs_execution_role_arn = "arn:aws:iam::992382373285:role/ecsTaskExecutionRole"