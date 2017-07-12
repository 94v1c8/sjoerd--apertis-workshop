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
      sh "yaib ospack-amd64.yaml"
    }
  }
}
