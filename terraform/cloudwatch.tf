resource "aws_cloudwatch_log_group" "next_js_pipeline" {
  name = "/ecs/${var.project_name}"
}