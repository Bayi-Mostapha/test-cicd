pipeline {
    environment {
        registry = "mostaphabayi/tp4"
        registryCredential = 'docker-hub-credentials'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Cloning Git') {
            steps {
                git branch: 'master', url: 'https://github.com/Bayi-Mostapha/test-cicd'
            }
        }
        stage('Building image') {
            steps {
                script {
                    dockerImage = docker.build(registry + ":$BUILD_NUMBER")
                }
            }
        }
        stage('Test image') {
            steps {
                script {
                    echo "Tests passed"
                }
            }
        }
        stage('Publish Image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}