pipeline {
    agent any
    stages {
        stage('Docker Build') {
            steps {
			    sh '''
                ssh ansible@172.31.20.150 "
                cd /home/ansible/busapp-multi-pipeline-branch
				sh docker-build.sh"
				'''
            }
        }
        stage('Deploy Env') {
            steps {
                sh '''
                ssh ansible@172.31.20.150 "
                cd /home/ansible/busapp-multi-pipeline-branch
				sh docker-deploy.sh"
				'''
            }
        }
    }
}
