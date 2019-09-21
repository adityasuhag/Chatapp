pipeline {
  agent any
  stages {
    stage('Docker Build') {
      steps {
        sh '''# docker build -t chatapp .
docker pull adityasuhag/chatapp'''
      }
    }
    stage('Tag and Push Image') {
      steps {
        sh 'docker tag adityasuhag/chatapp nitinbhojwani/chat-app'
        sh 'docker push nitinbhojwani/chat-app'
      }
    }
  }
}