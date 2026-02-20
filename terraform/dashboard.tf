resource "aws_cloudwatch_dashboard" "ecs_dashboard" {
  dashboard_name = "strapi-ecs-dashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type = "metric"
        x    = 0
        y    = 0
        width  = 12
        height = 6

        properties = {
          metrics = [
            [ "AWS/ECS", "CPUUtilization", "ClusterName", "strapi-cluster", "ServiceName", "strapi-service" ],
            [ ".", "MemoryUtilization", ".", ".", ".", "." ],
            [ ".", "RunningTaskCount", ".", ".", ".", "." ],
            [ ".", "NetworkRxBytes", ".", ".", ".", "." ],
            [ ".", "NetworkTxBytes", ".", ".", ".", "." ]
          ]
          period = 60
          stat   = "Average"
          region = "ap-south-1"
          title  = "ECS Service Metrics"
        }
      }
    ]
  })
}