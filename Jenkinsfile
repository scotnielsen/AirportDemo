pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building Code'
        sh '''clean.bat
'''
      }
    }
    stage('Coding standards') {
      steps {
        echo 'Running Analyzer'
      }
    }
  }
}