pipeline {
    
    agent any 
    
    tools {
        maven 'm3'
    }
    
    stages{
          
        stage('checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/roshanbarkuntwar/hello-world.git']]])
        }
    }

        stage ('Build') {
            steps {
            sh 'mvn clean install -f MyWebApp/pom.xml'
        
                
            }
        }
    } 
}
