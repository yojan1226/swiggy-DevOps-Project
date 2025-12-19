🚀 DevSecOps Blue-Green Deployment of Swiggy Clone on AWS ECS

This project demonstrates an end-to-end DevSecOps CI/CD pipeline that deploys a Swiggy Clone React application on AWS ECS (EC2 launch type) using Blue-Green deployment with AWS CodeDeploy, Application Load Balancer, and multiple security scanning tools.

📌 Project Overview

The goal of this project is to implement a secure, scalable, and zero-downtime deployment strategy using DevSecOps best practices.

🔑 Key Highlights

Infrastructure provisioned using Terraform

CI/CD pipeline using AWS CodePipeline & CodeBuild

DevSecOps security scans integrated into the pipeline

Blue-Green deployment on AWS ECS

Zero downtime deployments using ALB traffic shifting

🛠️ Tech Stack
☁️ Cloud & Infrastructure

AWS VPC, Subnets

AWS ECS (EC2 Launch Type)

AWS Application Load Balancer (ALB)

AWS Auto Scaling Group

AWS CodeDeploy

AWS CodePipeline

AWS Systems Manager Parameter Store

Terraform (IaC)

🔧 CI/CD & DevSecOps Tools

AWS CodeBuild

SonarQube (Code Quality & Security)

OWASP Dependency-Check

Trivy (Filesystem & Image Scan)

Docker & DockerHub

GitHub

🌐 Application

React (Swiggy Clone)

Node.js

Nginx / Serve

🏗️ Architecture Overview
![alt text](1.png)

🔐 DevSecOps Security Scans

The pipeline integrates security at every stage:

Tool	Purpose
SonarQube	Code quality, bugs, vulnerabilities
OWASP Dependency-Check	Detect vulnerable third-party libraries using NVD CVEs
Trivy FS Scan	Scan source code & dependencies
Trivy Image Scan	Scan Docker image for vulnerabilities

If high or critical vulnerabilities are detected, the pipeline can stop deployment.

🔁 Blue-Green Deployment Strategy

Blue → Current production version

Green → New version

ALB routes traffic using two target groups

CodeDeploy manages:

Health checks

Traffic shifting

Automatic rollback on failure

✅ Ensures zero downtime


📄 Important Configuration Files
🔹 buildspec.yaml

Defines build steps in CodeBuild

Runs:

Dependency installation

Security scans

Docker build & push

Pulls secrets from SSM Parameter Store

🔹 appspec.yaml

Used by CodeDeploy to:

Identify ECS service

Apply new task definition

Control ALB traffic for Blue-Green deployment

🔹 taskdef.json

Defines:

Docker image

Port mappings

Memory settings

Container name

🚀 Deployment Flow

Developer pushes code to GitHub

CodePipeline triggers CodeBuild

CodeBuild:

Runs security scans

Builds Docker image

Pushes image to DockerHub

CodeDeploy:

Deploys new version to Green

Performs health checks

Shifts traffic from Blue → Green

Old version is terminated after success


✅ Key Learnings

Practical DevSecOps implementation

Blue-Green deployment on ECS

Security scanning in CI/CD

Terraform for scalable AWS infrastructure

Real-world debugging & pipeline optimization