pipeline {
agent {
    node {
        label 'slave'
    }
} 
stages {
    stage('Build') {
        steps {
           sh 'docker build -t ecomm .'
      }
    }
    stage('Deploy') {
        steps {
           sh 'docker container run -dt --name ecomm -p 83:80 ecomm'
      }
    }
    stage('Check') {
        steps {
           sh 'Docker container ls'
      }
    }
  }
}
