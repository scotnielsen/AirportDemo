pipeline {
  agent any
  stages {
    stage('Clean dirs') {
      steps {
        echo 'Building Code'
        bat 'clean.bat'
      }
    }
    stage('Build App') {
      steps {
        parallel(
          "Build App": {
            echo 'Building app'
            bat 'build.bat'
            
          },
          "Build tests": {
            bat 'build-tests.bat'
            
          }
        )
      }
    }
    stage('prepare tests') {
      steps {
        bat 'prepare-tests'
      }
    }
    stage('run tests') {
      steps {
        bat 'run-tests.bat'
      }
    }
  }
}