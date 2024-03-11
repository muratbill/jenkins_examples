pipeline {
    agent any

    parameters {
        string(name: 'INPUT_STRING', defaultValue: 'Hello', description: 'Input string to reverse')
    }

    stages {
        stage('Reverse String') {
            steps {
                script {
                    // Call the Bash script to reverse the string
                    sh "./scripts/reverse_str.sh '${params.INPUT_STRING}'"
                }
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
