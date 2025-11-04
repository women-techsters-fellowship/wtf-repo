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
                echo 'still running pipeline. This is the second'
            }
        }
         stage("deploy") {
               steps { 
                     echo 'deploying the app immediately for testing again oooooo'

                } 

        }
    }
}
