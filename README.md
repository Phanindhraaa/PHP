# DevOps Assessment: PHP Yii2 Application Deployment

This repository contains my work for a project@MagicBus India Foundation. The goal was to deploy a sample PHP Yii2 application using modern DevOps tools and best practices.

## Tech Stack & Tools

- **PHP Yii2**: Sample application framework
- **Docker Swarm**: Container orchestration for scalable deployment
- **NGINX**: Web server and reverse proxy
- **Azure VM**: Cloud infrastructure for hosting
- **Ansible**: Infrastructure automation and configuration management
- **GitHub Actions**: CI/CD pipelines for automated build and deployment

## Project Structure

- `Dockerfile`: Containerizes the PHP Yii2 app
- Shell scripts: Automation and orchestration scripts
- Ansible playbooks: Automated provisioning and configuration
- GitHub Actions workflows: CI/CD pipelines

## Deployment Overview

1. **Infrastructure**:  
   - Provisioned Azure VM instances via Ansible.

2. **Containerization**:  
   - Built the Yii2 application image using the provided `Dockerfile`.
   - Used Docker Swarm for orchestrating multiple service containers.

3. **Web Server**:  
   - Configured NGINX as a reverse proxy to the Yii2 app containers.

4. **Automation**:  
   - Automated setup and deployment using Ansible playbooks.

5. **CI/CD**:  
   - Set up GitHub Actions to automate build, test, and deployment steps.

## Getting Started

### Prerequisites

- Docker & Docker Compose
- Ansible
- Azure CLI & credentials
- GitHub account (for CI/CD)

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/Phanindhraaa/PHP.git
   cd PHP
   ```

2. **Provision AWS EC2 Instances**
   - Use the provided Ansible playbooks to spin up and configure VM instances.

3. **Deploy with Docker Swarm**
   - Initialize Docker Swarm and deploy the stack using the included YAML files.

4. **Access Application**
   - The NGINX reverse proxy will route traffic to the Yii2 application.

## CI/CD

- GitHub Actions workflows are defined in `.github/workflows/` to automate testing and deployment on each push.
