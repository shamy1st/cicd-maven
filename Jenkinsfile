pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "workpspace: ${env.WORKSPACE}"
                echo "workpspace: ${env.JOB_NAME}"
                sh "/var/jenkins_home/workspace/pipeline-demo/stages/build.sh ${env.WORKSPACE} ${env.JOB_NAME} java-app"
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