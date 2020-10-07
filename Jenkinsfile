pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '/var/jenkins_home/workspace/pipeline-demo/stages/mvn.sh mvn -B -DskipTests clean package'
                sh '/var/jenkins_home/workspace/pipeline-demo/stages/build/build.sh'
            }
        }
        stage('Test') {
            steps {
                sh '/var/jenkins_home/workspace/pipeline-demo/stages/mvn.sh mvn test'
            }
        }
        stage('Deploy') {
            steps {
                sh '/var/jenkins_home/workspace/pipeline-demo/stages/deploy/deploy.sh'
            }
        }
    }
}