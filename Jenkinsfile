pipeline {
    agent any
    environment {
        IMAGE_NAME = 'sowmya056/react-app-dev'
        TAG = 'v1'
    }
    stages {
        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin'
                }
            }
        }
        stage('Docker Build & Push') {
            steps {
                sh '''
                docker build -t $IMAGE_NAME:$TAG .
                docker push $IMAGE_NAME:$TAG
                '''
            }
        }
    }
}
