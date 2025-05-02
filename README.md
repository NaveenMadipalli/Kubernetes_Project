

![Picsart_25-04-10_11-45-45-104](https://github.com/user-attachments/assets/5e33b4c6-6f07-4647-8303-e4f38a901674)

🚀 Steps : Automated Scalable Deployment with CI/CD
Developer Writes Code

The developer codes the application and commits (pushes) the changes to GitHub repository.

GitHub Webhook Triggers Jenkins

As soon as a new commit is pushed, a Webhook notifies Jenkins to start the build process automatically.

Jenkins Pulls Code from GitHub

Jenkins fetches the latest code from GitHub to start building the project pipeline.

Jenkins Sends Files to Ansible Server

Using SSH, Jenkins transfers Dockerfiles and deployment files to the Ansible server.

Ansible Builds Docker Image

Ansible uses the Dockerfile to build a Docker image for the application.

Docker Image is Tagged and Pushed to Docker Hub

Ansible tags the built image with a version and pushes it to the Docker Hub repository for global access.

Ansible SSH into Kubernetes Server

Ansible remotely connects to the Kubernetes cluster server via SSH.

Kubernetes Pulls the Latest Image

Kubernetes fetches the new image from Docker Hub using kubectl commands.

Deployment and Service Created in Kubernetes

Using Deployment.yml and Service.yml, Kubernetes deploys the container and exposes it via a NodePort service.

Web Application is Live and Accessible

The application runs in the Kubernetes cluster and is accessible via the cluster IP and NodePort.
