# CI/CD Mastery – Automating Deployment of an E-Commerce Website

## 🚀 Project Overview

This project demonstrates the automation of building, testing, and deploying a simple e-commerce web application using a CI/CD pipeline with Jenkins and Docker.

## 🛠️ Tools Used

- **Jenkins** – CI/CD Orchestration
- **Docker** – Containerization
- **GitHub** – Source Control
- **Docker Hub** – Container Registry
- **Ubuntu** – Server OS

## 📦 Tech Stack

- HTML for frontend (basic index.html)
- Dockerfile to package app
- Jenkinsfile to automate pipeline

## 🧪 CI/CD Pipeline Stages

1. **Clone GitHub Repository**
2. **Build Docker Image**
3. **Push Image to Docker Hub**
4. **Deploy Docker Container**

## 🔐 Credentials

Docker Hub credentials were securely injected via Jenkins Credentials Manager.

## 🖥️ How to Access the App

Once deployed, the application is available at: localhost:8081



## ✅ Result

- Successfully automated deployment with Jenkins
- Verified application runs on exposed port
- Images are pushed and version-controlled via Docker Hub

I completed the CI/CD Mastery – Automating Deployment of an E-Commerce Website project.
I set up a CI/CD pipeline with Jenkins that:

Clones the GitHub repo

Builds a Docker image

Pushes the image to Docker Hub

Deploys the container to a live environment

The pipeline executed successfully, and the deployed application is accessible at http://localhost:8081 on the server.


🔗 GitHub Repo: https://github.com/Techytobii/ci-cd-mastery.git



## 📸 Screenshots of the implementation process (start to finish)


### ✅ ci-cd-mastery repo created
![01.ci-cd-repo](/img/01.ci-cd-m.repo.png)


### ✅ connected to Ubuntu via SSH
![02.ssh-ubuntu](/img/02.ssh-ubuntu.png)


### ✅ updated & upgraded ubuntu
![sudo-update-upgrade](/img/03.update&upgrade.png)


### ✅ cloned into repo
![cloned-repo](/img/04.cloned-repo.png)


### ✅ created index.html and pasted demo content 
![indexfile](/img/05.index-html.png)


### ✅ added dockerfile
![dockerfile](/img/06.docker-file.png)


### ✅ built the ecomerce app using docker build command 
![docker-build](/img/07.build.docker-file.png)


### ✅ tested the container 
![test-container](/img/08.test.container.png)


### ✅ updated the server
![updated-server](/img/09.updated-server.png)


### ✅ ecommerce website is live
![ecommerce-site](/img/10.ecommerce.site.png)


### ✅ created ".gitignore"
![gitignore](/img/11-gitignore.png)


### ✅ created jenkinsfile
![jekinsfile](/img/13.jknsfile.png)


### ✅ created docker PAT
![dockerPAT](/img/12.PAT-docker.png)


### ✅ added files, committed changes and pushed to the main origin
![add.cmt.psh](/img/14.add-cmt-psh.png)


### ✅ created a new pipeline
![new-pipeline](/img/15.new-pipeline.png)


### ✅ configured pipeline job
![job-config](/img/16.job-configure.png)


### ✅ build again
![build-now](/img/build-now.png)


### ✅ pipeline is successfull
![pipeline-success](/img/18.pipelinesuccess.png)


### ✅ console output
![console-output](/img/17.console-output.txt)


### ✅ website is up and hosted on localhost:8081
![websiteup](/img/websiteup.png)



I'm proud to have achieved full CI/CD automation for a containerized web app.

