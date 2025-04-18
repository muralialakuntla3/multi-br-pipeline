pipeline {
agent {
    node {
        label 'slave'
    }
}
stages {
    stage('Clean Up') {
        steps {
           sh 'docker container rm -f food'
           sh 'docker image rm food'
      }
    }
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
