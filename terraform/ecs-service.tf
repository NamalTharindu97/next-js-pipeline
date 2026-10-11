resource "aws_ecs_service" "next_js_pipeline" {
  name            = "${var.project_name}-service"
  cluster         = aws_ecs_cluster.next_js_pipeline.id
  task_definition = "next-js-pipeline:6"

  desired_count = 1
  launch_type   = "FARGATE"

  deployment_minimum_healthy_percent = 100
  deployment_maximum_percent         = 200

  network_configuration {
    subnets = [
      aws_subnet.public_b.id,
      aws_subnet.public_a.id
    ]

    security_groups = [
      aws_security_group.ecs.id
    ]

    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.next_js_pipeline.arn
    container_name   = "next-js-pipeline"
    container_port   = 3000
  }

  lifecycle {
    ignore_changes = [
      task_definition
    ]
  }
}