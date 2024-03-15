pipeline {
    agent any

    environment {
        REGISTRY_IMAGE = 'raymondbaoly/nodejs'
        DOCKERFILE_PATH = 'Dockerfile'

    }

    stages {
        stage('Build') {
            steps {
                script {
                    sh 'docker build -t ${REGISTRY_IMAGE}:prod -f ${DOCKERFILE_PATH} .'
                }
            }
        }
        stage('Push') {
            steps {
                script {
                    sh "docker push ${REGISTRY_IMAGE}:prod"
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh "kubectl -n default rollout restart deployment/section6-nodejs"
                }
            }
        }

    }

}
