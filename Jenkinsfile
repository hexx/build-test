pipeline {
  stages {
    stage('build') {
      steps {
        script {
          def image = docker.build("build-test:0.0.0")
        }
        echo 'hogeika 3'
      }
    }
  }
}
