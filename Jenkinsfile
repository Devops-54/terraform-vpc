pipeline {
    agent any

    parameters {
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Select The Environment')
              
    }

    stages {
        stage('terraform init') {
            steps {    
                    sh "terrafile -f env-${ENV}/Terrafile"
                    sh "terraform init -reconfigure -backend-config=env-${ENV}/${ENV}-backend.tfvars"
            }
        }

        stage('terraform plan') {
            steps {    
                    sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }

        stage('terraform apply') {
            steps {    
                    sh "terraform apply -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }
        stage('terraform destroy') {
            steps {    
                    sh "terraform destroy -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }
    }
}