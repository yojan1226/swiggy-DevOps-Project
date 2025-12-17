#!/bin/bash
set -e

echo "===== ApplicationStart: Waiting for ECS service stability ====="

CLUSTER_NAME="swiggy-ecs-cluster"
SERVICE_NAME="swiggy-ecs-service"

aws ecs wait services-stable \
  --cluster "$CLUSTER_NAME" \
  --services "$SERVICE_NAME"

echo "ECS service is stable"
echo "Deployment completed successfully"
