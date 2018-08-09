pipeline {
    options {
        timeout(time: 1, unit: 'HOURS') 
    }
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