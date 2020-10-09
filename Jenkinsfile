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
        }
        stage('Test') {
            steps {
                sh "${env.WORKSPACE}/stages/test.sh ${APPLICATION_PATH}"
            }
        }
        stage('Deploy') {
            steps {
                sh "${env.WORKSPACE}/stages/deploy.sh ${APPLICATION_PATH} ${PRODUCTION}"
            }
        }
    }
}