pipeline {
  agent any
  stages {
    stage('Clean') {
      steps {
        bat 'clean.bat'
      }
    }
    stage('Build') {
      steps {
        parallel(
          "Build App": {
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
    stage('Coding Standards') {
      steps {
        parallel(
          "Coding Standards": {
            bat 'run-code-analysis.bat'
            
          },
          "": {
            archiveArtifacts 'AirportLib\\MFCAResults.log'
            
          }
        )
      }
    }
    stage('Package') {
      steps {
        archiveArtifacts 'bin\\*.*'
      }
    }
  }
}