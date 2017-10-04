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
        bat 'run-code-analysis.bat'
      }
    }
    stage('Package') {
      steps {
        parallel(
          "Package": {
            archiveArtifacts 'bin\\*.*'
            
          },
          "Get Analysis Log": {
            archiveArtifacts 'AirportLib\\MFCAResults.log'
            
          }
        )
      }
    }
  }
}