pipeline {
    agent any
    
        tools {
            maven "maven3"
           
            }
        environment{
            SCANNER_HOME= tool 'sonarscanner'
            }

    stages {
        stage('git checkout') {
            steps {
              git branch: 'main', url: 'https://github.com/NformiBlandine/maven_web_app_jenkins_pipeline.git' 
            }
        }
        
        stage('packaage') {
            steps {
              sh 'mvn clean package'
            }
        }
        
/*        stage('sonar analysis') {
            steps {
              withSonarQubeEnv('sonar') {
                       sh ''' $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=vira \
                   -Dsonar.java.binaries=. \
                   -Dsonar.projectKey=vira '''
                }
              
            }
        }
     */
     stage('deploy') {
            steps {
             
              sh 'docker build -t my-image:latest .'
              
            }
        }
        
        
    }
}
