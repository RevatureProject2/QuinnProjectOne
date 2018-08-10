pipeline {
    agent any
    stages {
        stage('Build') {
            parallel {
                stage('Actually working') {
                    steps {
                        dir('./reimbursementapi') {
                            sh 'mvn clean'
                            sh 'mvn install'
                        }
                    }
                }
                stage('MEMEING HARD'){
                    steps {
                        sh 'echo "(^_^) (^_^) (^_^)"'
                        sh 'echo "(^_^) (^_^) (^_^)"'
                        sh 'echo "(^_^) (^_^) (^_^)"'
                        sh 'echo "(^_^) (^_^) (^_^)"'
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