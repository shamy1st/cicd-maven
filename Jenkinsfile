pipeline {
    agent any

    environment {
        APPLICATION_PATH = "${env.WORKSPACE}/java-app"
        PRODUCTION = "production-container"
    }

    stages {
        stage('Build') {
            steps {
                sh "/var/jenkins_home/workspace/pipeline-demo/stages/build.sh ${APPLICATION_PATH}"
            }
        }
        stage('Test') {
            steps {
                sh "/var/jenkins_home/workspace/pipeline-demo/stages/test.sh ${APPLICATION_PATH}"
            }
        }
        stage('Deploy') {
            steps {
                sh "/var/jenkins_home/workspace/pipeline-demo/stages/deploy.sh ${APPLICATION_PATH} ${PRODUCTION}"
            }
        }
    }
}