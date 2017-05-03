pipeline {
  agent {
    docker {
      image 'node:6'
      args '-u root'
    }
    
  }
  stages {
    stage('install') {
      steps {
        sh 'node -v'
        sh 'npm install'
      }
    }
    stage('Test') {
      steps {
        parallel(
          "Test": {
            sh 'npm t'
            junit 'junit.xml'
            
          },
          "lint": {
            sh 'npm run lint'
            
          }
        )
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }
  }
  environment {
    CI = 'true'
  }
}