#!groovy
pipeline {
    agent none
   stages {
    stage('Maven Install') {
      agent {
       docker {
         image 'maven:3.8.8'
     }
  }
  steps {
       sh 'mvn clean install'
       }
     }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t yeisont08/spring-petclinic:latest .'
      }
    }
   stage('Docker Push') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push yeisont08/spring-petclinic:latest'
        }
      }
    }
   }
 }

