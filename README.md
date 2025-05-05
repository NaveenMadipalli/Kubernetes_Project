

![Picsart_25-04-10_11-45-45-104](https://github.com/user-attachments/assets/5e33b4c6-6f07-4647-8303-e4f38a901674)

CI/CD Pipeline for Dockerized App Deployment on Kubernetes using Jenkins, Ansible, and AWS

📑 Project Overview

This project demonstrates a complete CI/CD pipeline that automates the deployment of a Dockerized web application onto a Kubernetes cluster using Jenkins and Ansible on AWS.

The pipeline is triggered by a push to the GitHub repository.

Jenkins pulls the latest code, builds a Docker image, pushes it to Docker Hub, and triggers Ansible.

Ansible automates Kubernetes deployment on AWS EC2 instances.


This setup helps ensure that every new code push is automatically built and deployed with minimal manual intervention.


---

🚀 Workflow

1. Code Push
Developer pushes code to the GitHub repository.


2. Jenkins Trigger
Jenkins detects the push and starts the pipeline.


3. Docker Build & Push

Jenkins builds a Docker image from the updated code.

The image is pushed to Docker Hub.



4. Ansible Deployment

Jenkins uses Ansible to SSH into the Kubernetes master node.

Ansible deletes old deployments and applies new Kubernetes manifests.



5. Kubernetes Deployment

New Pods are created using the latest Docker image.

Service exposes the app on a LoadBalancer or NodePort.



6. App Live on AWS
The application is accessible publicly through the AWS EC2/Kubernetes setup.




---

🔧 Tools & Technologies Used

AWS: EC2 for Jenkins, Ansible, Kubernetes cluster nodes.

Jenkins: CI tool to automate building and pushing Docker images.

Docker: Containerization platform.

Docker Hub: Public registry to store Docker images.

Ansible: Automation tool for Kubernetes deployments.

Kubernetes: Orchestrator to manage containerized apps.

GitHub: Version control and source repository.



---

📂 Requirements

AWS Account (EC2 instances for Jenkins, Ansible, Kubernetes cluster)

Docker Hub account

Jenkins installed on an AWS EC2 instance

Ansible installed and configured to connect to Kubernetes master node

Kubernetes cluster running on AWS EC2

GitHub repository with code, Dockerfile, Deployment.yml, Service.yml, and Ansible playbook



---

📦 Project Structure

.
├── Dockerfile
├── Deployment.yml
├── Service.yml
├── ansible.yml
├── Jenkinsfile (pipeline script)
├── README.md
└── src/ (application source code)


---

📝 How It Works

Jenkins uses a Jenkinsfile to define the pipeline stages.

Docker image is built using the Dockerfile.

Kubernetes manifests (Deployment.yml and Service.yml) are applied through Ansible.

Ansible playbook ensures the old pods are deleted and new ones are created using the latest image.

App becomes live on Kubernetes with updated code.



---

