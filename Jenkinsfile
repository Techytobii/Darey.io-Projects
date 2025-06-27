pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('docker-hub-credentials')
        IMAGE_NAME = 'great2005/ci-cd-mastery-app'
    }

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Techytobii/ci-cd-mastery.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${IMAGE_NAME}:latest")
                }
            }
        }

        stage('Docker Hub Login & Push') {
            steps {
                script {
                    sh """
                        echo "${DOCKERHUB_CREDENTIALS_PSW}" | docker login -u "${DOCKERHUB_CREDENTIALS_USR}" --password-stdin
                        docker push ${IMAGE_NAME}:latest
                        docker logout
                    """
                }
            }
        }

        stage('Deploy Container') {
            steps {
                script {
                    sh '''
                        docker stop ecommerce-container || true
                        docker rm ecommerce-container || true
                        docker run -d -p 8081:80 --name ecommerce-container ${IMAGE_NAME}:latest
                    '''
                }
            }
        }
    }
}
