pipeline {
    agent any
    stages {
        stage('Docker Build') {
            steps {
			    sh '''
                ssh ansible@172.31.20.150 "
                cd /home/ansible/Multi_branch_master
				sh docker-build.sh"
				'''
            }
        }
        stage('Deploy Env') {
            steps {
                sh '''
                ssh ansible@172.31.20.150 "
                cd /home/ansible/Multi_branch_master
				sh docker-deploy.sh"
				'''
            }
        }
    }
}
