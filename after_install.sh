#!/bin/bash
set -e

echo "===== AfterInstall: Validating ECS Service ====="

CLUSTER_NAME="swiggy-ecs-cluster"
SERVICE_NAME="swiggy-ecs-service"

# Check ECS service exists
aws ecs describe-services \
  --cluster "$CLUSTER_NAME" \
  --services "$SERVICE_NAME" \
  --query "services[0].status" \
  --output text

echo "ECS service validation successful"
echo "AfterInstall completed successfully"
