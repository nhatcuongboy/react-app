pipeline {
     agent any
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
    }
}