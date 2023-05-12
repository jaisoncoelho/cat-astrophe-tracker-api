pipeline {
  agent any
  
  environment {
    RAILS_MASTER_KEY = credentials('RailsMasterKey')
    DATABASE_HOST = credentials('DatabaseHost')
    DATABASE_USERNAME = credentials('DatabaseUsername')
    DATABASE_PASSWORD = credentials('DatabasePassword')
  }
  
  stages {
    stage('Checkout') {
      steps {
        git branch: 'feature/master', url: 'https://github.com/jaisoncoelho/cat-astrophe-tracker-api.git'
      }
    }

    stage('Build') {
      steps {
        script {
          dockerImage = docker.build('jaisoncoelho/cat-astrophe-tracker-api', '-f Dockerfile .')
        }
      }
    }
  
    stage('Push Image') {
      steps {
        script {
          docker.withRegistry('', 'DockerHubCredentials') {  
            dockerImage.push("${env.BUILD_ID}")
          }
        }
      }
    }
  
    stage('Deploy') {
      steps {
        script {
          dockerImage.run("-d -p 3000:3000 -e RAILS_ENV=production -e RAILS_MASTER_KEY=${RAILS_MASTER_KEY} \
                          -e DATABASE_HOST=${DATABASE_HOST} -e DATABASE_USERNAME=${DATABASE_USERNAME} \
                          -e DATABASE_PASSWORD=${DATABASE_PASSWORD} --name cat-astrophe-tracker-api")
        }
      }
    }
  }
}
