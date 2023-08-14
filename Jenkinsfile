pipeline {
    agent gadi
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                sh 'echo "Building the project"'
            }
        }
        
        stage('Test') {
            steps {
                sh 'echo "Running tests"'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'echo "Deploying"'
            }
        }
    }
}
