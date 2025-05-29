pipeline {
    agent any

    environment {
        IMAGE_NAME = "sowmya056/react-app-dev"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'dev', url: 'https://github.com/SowmyaVasudevan/app_deploy.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKERHUB_CREDENTIALS_USR',
                    passwordVariable: 'DOCKERHUB_CREDENTIALS_PSW'
                )]) {
                    sh './build.sh'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                echo '✅ Image already pushed in previous step'
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Deploy step goes here'
            }
        }
    }

    post {
        failure {
            echo 'Pipeline failed.'
        }
    }
}

