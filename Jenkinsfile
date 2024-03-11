pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building the project...'
                // Add your build commands here
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the project...'
                // Add your deployment commands here
            }
        }
    }

    post {
        success {
            echo 'Pipeline succeeded! Any post-success actions can go here.'
        }
        failure {
            echo 'Pipeline failed! Any post-failure actions can go here.'
        }
    }
}
