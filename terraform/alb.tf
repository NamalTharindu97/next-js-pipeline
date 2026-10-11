resource "aws_lb_target_group" "next_js_pipeline" {
  name        = "${var.project_name}-tg"
  port        = 3000
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.main.id

  health_check {
    enabled             = true
    protocol            = "HTTP"
    port                = "traffic-port"
    path                = "/api/health"
    matcher             = "200"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
  }
}

resource "aws_lb" "next_js_pipeline" {
  name               = "${var.project_name}-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb.id]

  subnets = [
    aws_subnet.public_b.id,
    aws_subnet.public_a.id
  ]

  ip_address_type = "ipv4"
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.next_js_pipeline.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      protocol    = "HTTPS"
      port        = "443"
      status_code = "HTTP_301"
    }
  }
}

resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.next_js_pipeline.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"

  certificate_arn = aws_acm_certificate.devops.arn

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.next_js_pipeline.arn
  }

  lifecycle {
    ignore_changes = [
      default_action
    ]
  }
}