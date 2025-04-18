pipeline {
agent {
    node {
        label 'slave'
    }
} 
stages {
    stage('Clean Up') {
        steps {
           sh 'docker container rm -f ecomm'
           sh 'docker image rm ecomm'
      }
    }
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
           sh 'docker container ls'
      }
    }
  }
}
