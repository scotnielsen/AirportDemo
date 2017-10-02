pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building Code'
        bat 'clean.bat'
      }
    }
    stage('Coding standards') {
      steps {
        echo 'Running Analyzer'
      }
    }
  }
}