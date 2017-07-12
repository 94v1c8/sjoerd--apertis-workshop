pipeline {
  agent {
    dockerfile {
         label 'docker-slave'
         dir 'image-builder'
         args '--device=/dev/kvm'
    }
  }
  stages {
    stage("Build amd64 ospack") {
      steps {
        sh "yaib ospack-amd64.yaml"
      }
    }
  }
}
