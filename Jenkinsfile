pipeline {
    agent any
    
    stages {
        stage('Clone Code') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-html-app:v1 .'
            }
        }

        stage('Tag Image') {
            steps {
                sh 'docker tag my-html-app:v1 <dockerhub-username>/my-html-app:v1'
            }
        }

        stage('Push to DockerHub') {
            steps {
                sh 'docker push <dockerhub-username>/my-html-app:v1'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
            }
        }
    }
}
