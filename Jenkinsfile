pipeline {
    agent any

    environment {
        APPLICATION_PATH = "${env.WORKSPACE}/java-app"
        PRODUCTION = "production-container"
    }

    stages {
        stage('Build') {
            steps {
                sh "${APPLICATION_PATH}/stages/build.sh ${APPLICATION_PATH}"
            }
        }
        stage('Test') {
            steps {
                sh "${APPLICATION_PATH}/stages/test.sh ${APPLICATION_PATH}"
            }
        }
        stage('Deploy') {
            steps {
                sh "${APPLICATION_PATH}/stages/deploy.sh ${APPLICATION_PATH} ${PRODUCTION}"
            }
        }
    }
}