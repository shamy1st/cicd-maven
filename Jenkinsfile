pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '/var/jenkins_home/workspace/pipeline-demo/stages/build.sh'
            }
        }
        stage('Test') {
            steps {
                sh '/var/jenkins_home/workspace/pipeline-demo/stages/test.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh '/var/jenkins_home/workspace/pipeline-demo/stages/deploy.sh'
            }
        }
    }
}