pipeline {
  agent any

  stages {
     stage('dockerhub login') {
         steps {
           withCredentials([usernamePassword(credentialsId: "${DOCKER_REGISTRY_CREDS}", passwordVariable: 'DOCKER_PASS', usernameVariable: 'DOCKER_USERNAME'           )]) { sh "echo \$DOCKER_PASS | sudo docker login -u \$DOCKER_USERNAME --password-stdin docker.io"
            }
         }
      }
     stage('Changing the File Permission') {
            steps {
                sh 'chmod +x build.sh'
                sh 'chmod +x deploy.sh'
            }
          }
     stage('Build') {
         steps {
           sh 'sudo ./build.sh'
            }
          } 
     stage('deploy') {
         steps {
           sh 'sudo ./deploy.sh'
         
         }
       
     } 
    
  }

}
