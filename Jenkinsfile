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
                    sh "docker build -t dockerjenkinsproject ."
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'echo "Running Docker Container"'
                    sh "docker run -d --name dockerjenkinsproject dockerjenkinsproject"
                    sleep (20)
            }
        }
    }
        stage('Deploy') {
            steps {
                script {
                    // Your deployment steps go here
                    sh ./docker_check.sh
                }
         }
    }
}
}
