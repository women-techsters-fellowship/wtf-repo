pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        
        stage('hi') {
            steps {
                echo 'Still running pipeline. This is the second step'
            }
        }

        stage('build') {
            steps {
                echo 'Building the application...'
                // Example build command:
                // sh 'npm install' or 'mvn package' or 'python setup.py build'
            }
        }

        stage('deploy') {
            steps {
                echo 'Deploying an app immediately'
            }
        }
    }
}
