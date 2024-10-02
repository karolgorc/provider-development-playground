# provider-development-playground
Basic terraform configuration for developing terraform google provider

# Setting up IAM for impersonation
1. Create a service account that terraform will use to apply the changes
2. Give these permissions to users that will use the SA and the SA itself
   - Owner
   - Service Account Token Creator
     
   ![image](https://github.com/user-attachments/assets/12849817-ae1f-4573-9407-094e69ed5ad8)

3. From this point you should be able to perform terraform deployments

# Setting up repository
1. Look into `variables.tf` and `terraform.tfvars` and fill in all the placeholder values
2. terraform init
3. terraform plan
4. terraform apply
5. If all permissions are done correctly this should create a single compute VM
