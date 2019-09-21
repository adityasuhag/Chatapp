pipeline {
  agent any
  stages {
    stage('Docker Build') {
      steps {
        sh 'docker build -t chatapp .'
        sh 'docker tag'
      }
    }
    stage('Tag and Push Image') {
      steps {
        sh 'docker tag "chat-app" "nitinbhojwani/chat-app"'
      }
    }
  }
}