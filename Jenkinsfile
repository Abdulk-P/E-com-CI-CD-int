pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Abdulk-P/E-com-django.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-django-app .'
            }
        }
        stage('Run Django Container') {
            steps {
                sh 'docker stop my-django-app || true'
                sh 'docker rm my-django-app || true'
                sh 'docker run -d -p 8000:8000 -v $PWD/db.sqlite3:/app/db.sqlite3 --name my-django-app my-django-app'
            }
        }
    }
}
