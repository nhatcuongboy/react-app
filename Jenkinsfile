pipeline {
     agent any
     environment {     
        DOCKERHUB_CREDENTIALS= credentials('cb7dd0ab-e993-42ab-aac3-b25173580012');
        DOCKERHUB_REPOSITORY= 'react-app'     
     }  
     stages {
        stage("Build") {
            steps {
                sh "sudo yarn"
                sh "sudo yarn build"
            }
        }
        stage("Deploy") {
            steps {
                sh "sudo rm -rf /usr/share/nginx/html/react-app"
                sh "sudo cp -r ${WORKSPACE}/build/ /usr/share/nginx/html/react-app/"
            }
        }
        // stage('Build docker image') {
        //     steps {
        //         sh 'sudo docker build -t $DOCKERHUB_CREDENTIALS_USR/$DOCKERHUB_REPOSITORY:$BUILD_NUMBER .'
        //         echo 'Build Image Completed'
        //     }
        // }
        // stage('Login to Docker Hub') {         
        //   steps {                             
        //     sh 'echo $DOCKERHUB_CREDENTIALS_PSW | sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'                 
        //     echo 'Login Completed'                
        //   }           
        // }               
        // stage('Push Image to Docker Hub') {         
        //   steps {    
        //     // sh 'sudo docker tag $DOCKERHUB_REPOSITORY:$BUILD_NUMBER $DOCKERHUB_CREDENTIALS_USR/$DOCKERHUB_REPOSITORY:$BUILD_NUMBER'                        
        //     sh 'sudo docker push $DOCKERHUB_CREDENTIALS_USR/$DOCKERHUB_REPOSITORY:$BUILD_NUMBER'                 
        //     echo 'Push Image Completed'       
        //   }           
        // }   
        // stage('Run Docker Image') {         
        //   steps {    
        //     sh 'sudo docker rm -f react-app-final'
        //     sh 'sudo docker run --name react-app-final -d -p 3003:3000 --rm $DOCKERHUB_CREDENTIALS_USR/$DOCKERHUB_REPOSITORY:$BUILD_NUMBER'                 
        //     echo 'Run Image Completed'       
        //   }           
        // }      
  } 
  // post {
  //   always {  
  //     sh 'docker logout'           
  //   }      
  // }  
}