pipeline {
    options {
        timeout(time: 5, unit: 'MINUTES') 
    }
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
                dir('./frontEnd') {
                    timeout(time: 10, unit: 'MINUTES', activity: false) {
                        sh 'mkdir -p /www/reimbursementapi_frontend/build && cp -r ./build /www/reimbursementapi_frontend/build'
                        sh 'cp -r ./server /www/reimbursementapi_frontend'
                        sh 'cp ecosystem.config.js /www/reimbursementapi_frontend'
                    }
                }
                dir('/www/reimbursementapi_frontend') {
                    sh 'pm2 start ecosystem.config.js --env=production'
                }
            }
        }
    }     
}