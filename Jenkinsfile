pipeline {
agent any 
stages {
    stage('CODE ANALYSIS-SONARQUBE') {
        steps {
           sh 'docker build -t login .'
      }
    }
    stage('BUILD FOR ARTIFACTS') {
        steps {
           sh 'docker container run -dt --name login -p 82:80 login'
      }
    }
    stage('BUILD IMAGES-DOCKER') {
        steps {
           sh 'docker container ls'
      }
    }
  }
}
