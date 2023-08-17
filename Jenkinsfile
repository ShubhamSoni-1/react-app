pipeline {
    agent {
	docker {
		image 'node:latest'
		args '-p 3000:3000'
		}
	}
	environment {
		CI = 'true'
	}

    stages {
       
        stage('Install Dependencies') {
            steps {
                sh 'npm install -g npm@9.8.1'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }

}

