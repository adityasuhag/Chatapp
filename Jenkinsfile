pipeline {
  agent any
  stages {
    stage('Docker Build') {
      steps {
        build-pipeline
        sh 'docker build -t chatapp .'
        sh '''# docker build -t chatapp .
docker pull adityasuhag/chatapp:part1'''
      }
    }
    stage('Tag and Push Image') {
      steps {
        sh 'docker tag adityasuhag/chatapp:part1 nitinbhojwani/chat-app'
        sh 'docker push nitinbhojwani/chat-app'
        master
      }
    }
  }
}