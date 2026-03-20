pipeline {
    agent any
    stages {
		stage('Copy Files') {
    steps {
        sh '''
        scp -o StrictHostKeyChecking=no -r * ansible@172.31.20.150:/home/ansible/app
        '''
    }
}
        stage('Docker Build') {
            steps {
			    sh '''
                ssh ansible@172.31.20.150 "
				sh /home/ansible/app/docker-build.sh"
				'''
            }
        }
        stage('Deploy Env') {
            steps {
                sh '''
                ssh ansible@172.31.20.150 "
				sh /home/ansible/app/docker-deploy.sh"
				'''
            }
        }
    }
}
