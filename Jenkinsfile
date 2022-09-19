pipeline{
    agent any
    stages{
        stage('Git-Clone'){
            steps{
                sh 'pwd'
                sh 'ls -al'
            }
 
        }
        stage('Terraform Init & Plan'){
            when{
                expression{
                    params.TERRAFORM_ACTION == 'DEPLOY'
                }
            }
            steps{
                sh 'terraform init'
                sh 'terraform validate'
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply'){
            when{
                expression{
                    params.TERRAFORM_ACTION == 'DEPLOY'
                }
            }
            steps{
                sh 'terraform init'
                sh 'terraform apply --auto-approve'
                sh 'terraform state list'
                sh 'sleep 200s'
            }
        }
        stage('Terraform Destroy'){
            when{
                expression{
                    params.TERRAFORM_ACTION == 'DESTROY'
                }
            }
            steps{
                sh 'terraform init'
                sh 'terraform destroy --auto-approve'
                sh 'terraform state list'
            }
        }

        stage('Run Ansible Playbook'){
            when{
                expression{
                    params.TERRAFORM_ACTION == 'DEPLOY'
                }
            }
            steps{
                ansiblePlaybook become: true, credentialsId: 'ansible', inventory: 'inventory', playbook: 'play.yml'
            }
        }
    }
}
