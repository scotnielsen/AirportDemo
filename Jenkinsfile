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
        parallel(
          "Run Tests": {
            bat 'run-tests.bat'
            junit 'bin\\*.xml'
            
          },
          "Run Code Analysis": {
            bat 'run-code-analysis.bat'
            
          }
        )
      }
    }
    stage('Collect Artefacts') {
      steps {
        archiveArtifacts 'bin\\*.*'
      }
    }
  }
}