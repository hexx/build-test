pipeline {
  agent {
    docker {
      image 'centos'
    }

  }
  stages {
    stage('build') {
      steps {
        script {
          def image = docker.build("build-test:0.0.0")
        }
        echo 'hogeika2'
      }
    }
  }
}
