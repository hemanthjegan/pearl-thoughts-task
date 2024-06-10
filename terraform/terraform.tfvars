#vpc
vpc_name = "pt-vpc"
subnet_name = "pt-sub"

#ecs
ecs_cluster_name = "TfCluster"
ecs_task_definition_name = ""
container_name = "tf-container"
image_uri = "pt-node-app:v.01"
ecs_service_name = "tf-service"
ecs_execution_role_arn = "arn:aws:iam::992382373285:role/ecsTaskExecutionRole"