pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from the repository
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                script {
                    sh 'echo "Building the project"'
                    def Dockerfile = "dockerjenkinsproject"
                    sh "docker build -t $dockerjenkinsproject ."
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'echo "Running Docker Container"'
                    def containerId = sh(script: "docker run -d --name $dockerjenkinsproject $dockerjenkinsproject")
                    sleep (20)
            }
        }
        
        stage('Deploy') {
            steps {
                // Your deployment steps go here
                sh 'echo "Deploying"'
                }
            }
        }
    }
}
