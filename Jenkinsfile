pipeline {
    options {
        timeout(time: 1, unit: 'HOURS') 
    }
    agent any
    stages {
        stage('Build') {
            steps {
                dir('./reimbursementapi') {
                    sh 'mvn clean'
                    sh 'mvn install'
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