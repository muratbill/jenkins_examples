pipeline {
    agent any

    environment {
        // Define environment variables if needed
        // Example: MY_VARIABLE = 'value'
    }

    parameters {
        // Define parameters if needed
        // Example: string(name: 'TARGET_ENV', defaultValue: 'dev', description: 'Target environment')
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                // Add build steps here
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
                // Add test steps here
            }
        }

        stage('Deploy to Production') {
            when {
                expression { params.DEPLOY_TO_PROD == true }
            }
            steps {
                echo 'Deploying to production...'
                // Add deployment steps here
            }
        }

        stage('Manual Approval') {
            when {
                expression { params.MANUAL_APPROVAL == true }
            }
            steps {
                input 'Proceed with deployment?'
                // Additional steps after manual approval
            }
        }
    }

    post {
        success {
            echo 'Pipeline succeeded! Add post-build actions here.'
        }
        failure {
            echo 'Pipeline failed! Add post-failure actions here.'
        }
    }
}
