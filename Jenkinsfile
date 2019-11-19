pipeline {
  environment {
    gcrAccessToken = 'ya29.ImexB5Zcog6R_vdSNN2mg1pE60MJMbfk57Jx4zzmnO8XWwjbGTrBJV3uR1FZkv65K9rYP6vOaHo4ZLXp0NdLiDfVYIVblshKK-r_1IGdQpGb7DhJTNA73TSWo5yu0jANlQteDA18lXWw'
    imageName = ""
    image = ''
  }
  agent any
  stages {
    stage('build') {
      steps {
        script {
          image = docker.build("build-test:0.0.2")
        }
      }
    }
    stage('push') {
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
