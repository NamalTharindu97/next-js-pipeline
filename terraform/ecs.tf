resource "aws_ecs_cluster" "next_js_pipeline" {
  name = "${var.project_name}-cluster"
}