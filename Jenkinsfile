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
                // Your build steps go here
                sh 'echo "Building the project"'
            }
        }
        
        stage('Test') {
            steps {
                // Your testing steps go here
                sh 'echo "Running tests"'
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
