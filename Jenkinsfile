pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                dir('./frontEnd') {
                    sh 'yarn'
                    sh 'yarn run build'
                }
            }
        }
        stage('Test') {
            steps {
                echo '(*_*)'
            }
        }
        stage('Deliver') {
            steps {
                echo '<(^_^<)'
            }
        }
    }
}