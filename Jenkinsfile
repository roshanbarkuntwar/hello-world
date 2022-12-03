pipeline{
    
    agent any 
     tools {
        maven 'maven'
    }
    stages{
        stage('checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/roshanbarkuntwar/hello-world.git']]])
            
                
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install -f webapp/pom.xml'
            }        
            post{
                success{
                    echo "Archiving the Artifacts"
                    archiveArtifacts artifacts: "**/target/*.war"
                }
            }
        }        
        stage('Deploy') {
            steps {
            deploy adapters: [tomcat9(credentialsId: 'sonu', path: '', url: 'http://54.249.174.141:8080')], contextPath: null, war: '**/*.war'
           
                
            }
        }
        
    }
}    
