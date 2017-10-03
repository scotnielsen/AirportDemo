pipeline {
  agent any
  stages {
    stage('Clean') {
      steps {
        bat 'clean.bat'
      }
    }
    stage('Run Analysis') {
      steps {
        parallel(
          "Run Analysis": {
            echo 'Checking for dead code'
            
          },
          "Build application": {
            bat 'build.bat'
            
          },
          "Build Tests": {
            bat 'build-tests.bat'
            
          }
        )
      }
    }
    stage('Run Tests') {
      steps {
        bat 'run-tests.bat'
        junit 'bin\\*.xml'
      }
    }
    stage('Collect Artefacts') {
      steps {
        archiveArtifacts 'bin\\*.*'
      }
    }
  }
}