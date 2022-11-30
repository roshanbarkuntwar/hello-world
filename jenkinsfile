
pipeline {
    agent any
    environment {
        PATH = "/c/apache-maven-3.8.6-bin:$PATH" 
    }
    stages {
        stage("clone code"){
            steps{
               git credentialsId: 'git_credentials', url: 'https://github.com/roshanbarkuntwar/hello-world.git'
            }
        }    
        stage("build code"){
            steps{
              sh "mvn clean install"
            }
        }
        stage("deploy"){
            steps{
              sshagent(['deploy_user']){
                     sh "scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@13.212.6.248:/root/apache-tomcat-9.0.69/webapps"
                     
                    }
                }
            }
        }
    }
