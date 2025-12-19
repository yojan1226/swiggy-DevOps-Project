🚀 DevSecOps Blue-Green Deployment of Swiggy Clone on AWS ECS

This project demonstrates an end-to-end DevSecOps CI/CD pipeline that deploys a Swiggy Clone React application on AWS ECS (EC2 launch type) using a Blue-Green deployment strategy.

The solution integrates security at every stage, ensures zero downtime, and follows real-world DevOps & DevSecOps best practices.

📌 Project Overview

The main objective of this project is to design and implement a secure, scalable, and automated deployment pipeline using AWS services and open-source security tools.

🔹 Focus areas:

- Infrastructure as Code (IaC)

- CI/CD automation

- DevSecOps security scanning

- Zero-downtime deployments

✨ Key Highlights

- 🏗️ Infrastructure provisioned using Terraform

- 🔁 CI/CD pipeline using AWS CodePipeline & CodeBuild

- 🔐 Integrated DevSecOps security scans

- 🔵🟢 Blue-Green deployment on AWS ECS

- ⚖️ Zero downtime using ALB traffic shifting

- 🔄 Automatic rollback on deployment failure

🛠️ Tech Stack
☁️ Cloud & Infrastructure

- AWS VPC & Subnets

- AWS ECS (EC2 Launch Type)

- AWS Application Load Balancer (ALB)

- AWS Auto Scaling Group

- AWS CodeDeploy

- AWS CodePipeline

- AWS Systems Manager Parameter Store

- Terraform (Infrastructure as Code)

🔧 CI/CD & DevSecOps Tools

- AWS CodeBuild

- SonarQube (Code Quality & Security Analysis)

- OWASP Dependency-Check

T- rivy (Filesystem & Docker Image Scan)

- Docker & DockerHub

- GitHub

🌐 Application Stack

- React (Swiggy Clone UI)

- Node.js

- Serve (Static file hosting)

🏗️ Architecture Overview

The architecture follows a DevSecOps-driven CI/CD workflow where security and quality checks are performed before deployment, and traffic is safely shifted using Blue-Green deployment.

🔄 Code flows from GitHub → CodePipeline → CodeBuild → DockerHub → CodeDeploy → ECS → ALB → Users


🔐 DevSecOps Security Scans

Security is integrated at multiple stages of the pipeline:

Tool	Purpose
SonarQube	Code quality analysis, bugs & security vulnerabilities
OWASP Dependency-Check	Detect vulnerable third-party libraries using NVD CVEs
Trivy (FS Scan)	Scan source code and dependencies
Trivy (Image Scan)	Scan Docker images for vulnerabilities

🚫 If high or critical vulnerabilities are detected, the pipeline can block deployment.

🔁 Blue-Green Deployment Strategy

🔵 Blue → Current production version

🟢 Green → New application version

How it works:

- ALB maintains two target groups

- CodeDeploy deploys the new version to Green

- Health checks are performed

- Traffic is shifted Blue → Green

- Automatic rollback occurs on failure

✅ Ensures zero downtime and safe releases

📄 Important Configuration Files
🔹 buildspec.yaml

Used by AWS CodeBuild to:

- Install dependencies

- Run security scans

- Build Docker image

- Push image to DockerHub

- Fetch secrets from SSM Parameter Store

🔹 appspec.yaml

- Used by AWS CodeDeploy to:

- Identify ECS service

- Apply new task definition

- Manage ALB traffic during Blue-Green deployment

🔹 taskdef.json

- Defines ECS container configuration:

- Docker image

- Port mappings

- Memory allocation

Container name

🚀 Deployment Flow

- Developer pushes code to GitHub

- AWS CodePipeline is triggered

- AWS CodeBuild:

- Runs DevSecOps security scans

- Builds Docker image

- Pushes image to DockerHub

AWS CodeDeploy:

- Deploys new version to Green

- Performs health checks

- Shifts traffic from Blue → Green

- Old version is terminated after successful    deployment

✅ Key Learnings

- Hands-on DevSecOps pipeline implementation

- Real-world Blue-Green deployment on ECS

- Integrating security into CI/CD

- Using Terraform for scalable infrastructure

- Debugging CI/CD and production deployment issues