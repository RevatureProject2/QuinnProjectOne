pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                dir('./reimbursementapi') {
                    sh 'mvn clean'
                    sh 'mvn install'
                }
                dir('./frontEnd') {
                    timeout(time: 10, unit: 'MINUTES', activity: false) {
                        sh 'yarn'
                        sh 'yarn run build'
                        sh 'cp -r ./build /www'
                    }
                }
            }
        }
        stage('Test') {
            steps {
                echo '>^_^)> $$$ <(^_^<'
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