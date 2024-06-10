pipeline {
 
   
 

 
    agent any

    stages {






stage('ARTIFACT CONSTRUCTION') {
            steps {
                echo 'Constructing artifact'
                sh 'mvn package -Dmaven.test.skip=true'
            }
        }


stage ('MVN COMPILE') {
    steps {
        sh 'mvn compile'
    }
}
stage ('MVN test') {
    steps {
        sh 'mvn test'
    }
}




stage ('MVN SONAR') {
    steps {
        sh 'mvn sonar:sonar -Dsonar.login=admin -Dsonar.password=nour'
    }
}

// stage ('MVN DEPLOY TO NEXUS') {
//             steps {
//                 nexusArtifactUploader(
//         nexusVersion: 'nexus3',
//         protocol: 'http',
//         nexusUrl: 'localhost:8081',
//         groupId: 'pom.tn.esprit.spring',
//         version: 'pom.4.0.0',
//         repository: 'nexus-repo-devops',
//         credentialsId: 'NEXUS_CRED',
//         artifacts: [
//             [artifactId: 'pom.eventsProject',
//              classifier: '',
//              file: "pom.xml" ,
//              type: "pom"]
//         ]
//      )
//             }
//         }







}}
