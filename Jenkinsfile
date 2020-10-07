pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './stages/mvn.sh mvn -B -DskipTests clean package'
                sh './stages/build/build.sh'
            }
        }
        stage('Test') {
            steps {
                sh './stages/mvn.sh mvn test'
            }
        }
        stage('Deploy') {
            steps {
                sh './stages/deploy/deploy.sh'
            }
        }
    }
}