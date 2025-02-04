pipeline {
agent any 
stages {
    stage('docker build') {
        steps {
           sh 'docker build -t food .'
      }
    }
    stage('running container') {
        steps {
           sh 'docker container run -dt --name food -p 81:80 food'
      }
    }
    stage('container status') {
        steps {
           sh 'docker container ls'
           echo 'food container running'
      }
    }
  }
}
