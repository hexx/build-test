pipeline {
  environment {
    imageTag = "${env.TAG_NAME == null ? "latest" : env.TAG_NAME}"
    imageName = 'cicd-test-259105/' + "${env.JOB_NAME}:$imageTag"
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
        tag '*.*.*'
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
