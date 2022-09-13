pipeline {
    agent any
    stages{
        stage('build da imagem docker'){
            steps{
                sh 'docker build -t web .'
            }
        }
        stage('subir docker compose - web'){
            steps{
                sh 'docker-compose up --build -d'
            }    
        }
        stage('esperanado subir os containers'){
            steps{
                sh 'sleep 10'
            }
        }
        stage('teste da aplicação'){
            steps{
                sh 'chmod +x teste-app.sh'
                sh './teste-app.sh'
            }
        }
        stage('upload docker image'){
            steps{
                script{
                    withCredentials([usernamePassword(credentialsId: 'nexus-user', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD' )]){
                        sh 'docker login -u $USERNAME -p $PASSWORD ${NEXUS_URL}'
                        sh 'docker tag devops/app:latest ${NEXUS_URL}/devopsapp'
                        sh 'docker push ${NEXUS_URL}/devops/app'
                    }
                        
                }
            }
        }
    }
}