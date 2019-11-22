pipeline {
  environment {
    imageTag = "${env.TAG_NAME == null ? "latest" : env.TAG_NAME}"
    imageName = "cicd-test-259105/' + 'build-test:$TAG_NAME"
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
        allOf {
          branch 'master'
          tag '*.*.*'
        }
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
