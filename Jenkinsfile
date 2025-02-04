pipeline {
agent any 
stages {
    stage('CODE ANALYSIS-SONARQUBE') {
        steps {
           sh 'docker build -t ecomm .'
      }
    }
    stage('BUILD FOR ARTIFACTS') {
        steps {
           sh 'docker container run -dt --name ecomm -p 83:80 ecomm'
      }
    }
    stage('BUILD IMAGES-DOCKER') {
        steps {
           sh 'echo docker images build and pushed to docker hub'
      }
    }
  }
}
