pipeline {
    agent any

    environment {
        APPLICATION_PATH = "${env.WORKSPACE}/java-app"
        PRODUCTION = "production-container"
    }

    stages {
        stage('Build') {
            steps {
                sh "${env.WORKSPACE}/stages/build.sh ${APPLICATION_PATH}"
            }

            post {
                success {
                   archiveArtifacts artifacts: "${APPLICATION_PATH}/target/*.jar", fingerprint: true
                }
            }
        }
        stage('Test') {
            steps {
                sh "${env.WORKSPACE}/stages/test.sh ${APPLICATION_PATH}"
            }

            post {
                always {
                    junit "${APPLICATION_PATH}/target/surefire-reports/*.xml"
                }
            }
        }
        stage('Deploy') {
            steps {
                sh "${env.WORKSPACE}/stages/deploy.sh ${APPLICATION_PATH} ${PRODUCTION}"
            }
        }
    }
}