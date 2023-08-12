pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }

        stage('Deploy Staging') {
            when {
                expression { params.DEPLOY_TO_STAGING == 'true' }
            }
            steps {
                // Deployment to staging server
            }
        }

        stage('Deploy Production') {
            when {
                expression { params.DEPLOY_TO_PRODUCTION == 'true' }
            }
            steps {
                // Deployment to production server
            }
        }
    }
}

