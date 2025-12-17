#!/bin/bash
set -e

echo "===== BeforeInstall: Validating ECS instance ====="

# Check Docker
if ! command -v docker &> /dev/null; then
  echo "ERROR: Docker is not installed"
  exit 1
fi

# Check ECS agent container
if ! docker ps | grep -q ecs-agent; then
  echo "ERROR: ECS agent is not running"
  docker ps -a
  exit 1
fi

echo "Docker and ECS agent are running"
echo "BeforeInstall completed successfully"
