pipeline {
agent {
    node {
        label 'slave'
    }
} 
stages {
    stage('Build') {
        steps {
           sh 'docker build -t login .'
      }
    }
    stage('Deploy') {
        steps {
           sh 'docker container run -dt --name login -p 82:80 login'
      }
    }
    stage('Check') {
        steps {
           sh 'docker container ls'
      }
    }
  }
}
