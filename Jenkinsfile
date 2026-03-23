pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "sathishdevops007/busapp"
    }

    stages {

        stage('Clone Code') {
            steps {
                git branch: 'main', credentialsId: '1001', url: 'https://github.com/SathishRepo-Prod/Multibranch.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh '''
                    docker login -u $USER -p $PASS
                    docker push $DOCKER_IMAGE
                    '''
                }
            }
        }

    stages {

        stage('Deploy Env') {
            steps {
                sh '''
                ssh ansible@172.31.20.150 "
                sh docker-deploy.sh"
                '''
            }
        }

    }
}
