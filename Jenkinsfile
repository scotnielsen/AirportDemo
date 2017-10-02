pipeline {
  agent any
  stages {
    stage('Clean dirs') {
      steps {
        echo 'Building Code'
        bat 'clean.bat'
      }
    }
    stage('Build') {
      steps {
        echo 'Building app'
        bat 'build.bat'
      }
    }
  }
}