pipeline {
    agent any

    environment {
        DOCKER_CREDS = credentials('dockerhub-credentials-id')
        IMAGE_NAME = 'paulocarlosfilho/api-fap:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('SAST & Lint') {
            steps {
                dir('Observabilidade') {
                    sh 'npm ci'
                    sh 'npm audit --audit-level=high'
                }
            }
        }

        stage('Testes Unitários') {
            steps {
                dir('Observabilidade') {
                    sh 'npm test'
                }
            }
        }

        stage('Build Docker & Push') {
            steps {
                script {
                    sh "docker login -u ${DOCKER_CREDS_USR} -p ${DOCKER_CREDS_PSW}"
                    // Se o Dockerfile estiver direto na pasta Observabilidade, use './Observabilidade'
                    sh "docker build -t ${IMAGE_NAME} ./Observabilidade"
                    sh "docker push ${IMAGE_NAME}"
                }
            }
        }

        stage('Deploy com Terraform & LocalStack') {
            steps {
                dir('Terraform') {
                    sh 'terraform init'
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
