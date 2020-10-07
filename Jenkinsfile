pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '/Users/elshamy/Documents/courses/jenkins/cicd/pipeline/stages/mvn.sh mvn -B -DskipTests clean package'
                sh '/Users/elshamy/Documents/courses/jenkins/cicd/pipeline/stages/build/build.sh'
            }
        }
        stage('Test') {
            steps {
                sh '/Users/elshamy/Documents/courses/jenkins/cicd/pipeline/stages/mvn.sh mvn test'
            }
        }
        stage('Deploy') {
            steps {
                sh '/Users/elshamy/Documents/courses/jenkins/cicd/pipeline/stages/deploy/deploy.sh'
            }
        }
    }
}