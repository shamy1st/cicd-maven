pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "/var/jenkins_home/workspace/pipeline-demo/stages/build.sh ${env.WORKSPACE} java-app"
            }
        }
        stage('Test') {
            steps {
                sh "/var/jenkins_home/workspace/pipeline-demo/stages/test.sh ${env.WORKSPACE} java-app"
            }
        }
        stage('Deploy') {
            steps {
                sh "/var/jenkins_home/workspace/pipeline-demo/stages/deploy.sh ${env.WORKSPACE} java-app"
            }
        }
    }
}