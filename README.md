# terraform-vpc

This is the root module to created VPC on AWS Cloud and this root module looks for the terraform modules code that were made and available on the top of backend-module https://github.com/Devops-54/tf-module-vpc.git

# Terrafile :

```
1) This is a binary written in GO
2) All it does is , it downloads the backend module from the mentioned branch and keeps it's locally available to the root module
3) So that your indended backend module can be closed from the branch of your choice
```