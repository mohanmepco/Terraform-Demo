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
                sh ' rm -r *; git clone https://github.com/mohanmepco/Terraform-Demo.git'
            }
        }
        stage('tfsvars create'){
            steps {
                sh 'cp /home/build/terraform.tfvars /home/build/.jenkins/workspace/Terraform-Demo/Terraform-Demo'
            }
        }
        stage('terraform init') {
            steps {
                sh '/home/build/.jenkins/workspace/Terraform-Demo/Terraform-Demo/terraform init'
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
