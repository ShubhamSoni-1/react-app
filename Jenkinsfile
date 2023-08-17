pipeline {
    agent any

    stages {
       
        stage('Install Dependencies') {
            steps {
                sh 'npm install -g npm@9.8.1
'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
           	args '-p 8080:3000'
		 }
        }
	stage('Deploy') {
	steps {
		sh 'npm start'
		}
	}
}
}
