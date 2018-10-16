pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'sudo rm -r *;sudo git clone https://github.com/mohanmepco/Terraform-Demo.git'
            }
        }
        stage('tfsvars create'){
            steps {
                sh 'sudo cp /home/build/terraform.tfvars /home/build/.jenkins/workspace/Terraform-Demo'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo /home/build/terraform init ./jenkins'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins; sudo /home/build/terraform plan ./jenkins'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
