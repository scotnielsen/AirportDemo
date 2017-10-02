pipeline {
  agent any
  stages {
    stage('Clean dirs') {
      steps {
        echo 'Cleaning up '
        bat 'clean.bat'
      }
    }
    stage('Build App') {
      steps {
        parallel(
          "Build App": {
            echo 'Building app'
            bat(script: 'build.bat', returnStatus: true, returnStdout: true)
            
          },
          "Build tests": {
            bat(script: 'build-tests.bat', returnStatus: true, returnStdout: true)
            
          }
        )
      }
    }
    stage('prepare tests') {
      steps {
        bat(script: 'prepare-tests', returnStatus: true, returnStdout: true)
      }
    }
    stage('run tests') {
      steps {
        bat 'run-tests.bat'
      }
    }
    stage('Collect artefacts') {
      steps {
        archiveArtifacts 'bin\\*.*'
        junit 'bin\\*.xml'
      }
    }
  }
}