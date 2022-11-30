pipeline{
    agent any
    tools{
        maven 'maven-3.8.6'
    }   
    stages{
        stage ("build code"){
            steps{
                sh 'mvn clean install'
            }
            post{ 
                success{
                    echo "Archiving the Artifacts" 
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }              
        stage ("deploy") {
            steps{
                deploy adapters: [tomcat9(credentialsId: 'roshan', path: '', url: 'http://13.212.6.248:8080/')], contextPath: null, war: '**/*.war' 
            }
        }
    }
}
    

