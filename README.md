# autodeploy-lite
A production-grade CI/CD pipeline using GitHub Actions, DockerHub &amp; AWS EC2 with zero-downtime deployment, health checks, rollback, NGINX reverse proxy, and Slack notifications.

#  AutoDeploy Lite

> A production-ready CI/CD pipeline using GitHub Actions, DockerHub, and AWS EC2 with zero-downtime deployment, rollback, and Slack notification.

## 🛠 Tools Used

- GitHub Actions
- Docker & DockerHub
- AWS EC2
- Slack
- NGINX
- Bash Scripting

##  Features

- ✅ Git-based version tagging
- ✅ Zero downtime deploys (Blue-Green)
- ✅ Slack alerts on success/failure
- ✅ Health check and rollback safety
- ✅ NGINX reverse proxy

##  Architecture

GitHub → GitHub Actions → DockerHub → EC2 (Pull + Deploy) → Slack
