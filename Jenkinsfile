pipeline {
    agent any

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
	stage('Deploy') {
	steps {
		sh 'nom start'
		}
	}
}

