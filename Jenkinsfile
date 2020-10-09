pipeline {
    agent any

    environment {
        JAVA_APP = "java-app"
        APPLICATION_PATH = "${env.WORKSPACE}/${JAVA_APP}"
        PRODUCTION = "production-container"
    }

    stages {
        stage('Build') {
            steps {
                sh "${env.WORKSPACE}/stages/build.sh ${APPLICATION_PATH}"
            }

            post {
                success {
                   archiveArtifacts artifacts: "${JAVA_APP}/target/*.jar", fingerprint: true
                }
            }
        }
        stage('Test') {
            steps {
                sh "${env.WORKSPACE}/stages/test.sh ${APPLICATION_PATH}"
            }

            post {
                always {
                    junit "${JAVA_APP}/target/surefire-reports/*.xml"
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