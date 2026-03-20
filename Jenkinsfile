pipeline {
    agent any
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
