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
                dir('./reimbursementapi') {
                    sh 'echo $CATALINA_HOME'
                    sh 'cp target/*.war $CATALINA_HOME/webapps/'
                    sh 'cp -r target/reimbursementapi $CATALINA_HOME/webapps/'
                }
            }
        }
    }
}