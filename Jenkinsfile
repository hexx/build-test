pipeline {
  environment {
    imageName = 'cicd-test-259105/' + 'build-test:0.0.3'
    image = ''
  }
  agent any
  stages {
    stage('build') {
      steps {
        script {
          image = docker.build(imageName)
        }
      }
    }
    stage('push') {
      when {
        branch 'master'
      }
      steps {
        script {
          docker.withRegistry('https://gcr.io', 'gcr-credential-id') {
           image.push()
          }
        }
      }
    }
  }
}
