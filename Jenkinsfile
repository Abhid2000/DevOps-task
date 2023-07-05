pipeline {
    agent any
    stages {
        stage('git') {
            steps {
                git branch: 'main', url: 'https://github.com/Abhid2000/DevOps-task.git'
                sh 'docker build -t fastapi-app .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 8000:8000 fastapi-app'
            }
        }
        stage ('Build') {
            steps {
                 sh '''docker-compose -f /usr/local/bin/docker-compose.yml up --build'''
            }   
        }
    }    
}