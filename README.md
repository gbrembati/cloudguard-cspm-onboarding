# Check Point CPSM Configuration
This Terraform project is intended to be used to onboard multiple Public Cloud accounts (Azure/AWS/GCP) and K8s Clusters in one-shot.     
What it does is configuring through API (with **Terraform**) an existing CloudGuard CSPM Portal.      
 
## How to start?
First, you need to have a CloudGuard CSPM account, if you don't, you can create one with these links:
1. Create an account in [Europe Region](https://secure.eu1.dome9.com/v2/register/invite)
2. Create an account in [Asia Pacific Region](https://secure.ap1.dome9.com/v2/register/invite)
3. Create an account in [United States Region](https://secure.dome9.com/v2/register/invite)

## Get API credentials in your CPSM Portal
Then you will need to get the API credentials that you will be using with Terraform to onboard the accounts.

![Architectural Design](/zimages/create-cpsm-serviceaccount.jpg)

Remember to copy these two values, you will need to enter them in the *.tfvars* file later on.

## How to use it
The only thing that you need to do is changing the __*terraform.tfvars*__ file located in this directory.

```hcl
# Set in this file your deployment variables
cspm-key-id     = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
cspm-key-secret = "xxxxxxxxxxxxxxxxxxxx"

azure-onboard   = true
azure-op-mode   = "Read"
azure-accounts  =  {
    "0" = ["NAME","SUBSCRIPTION ID","TENANT ID","CLIENT ID","CLIENT PASSWORD"]
#   "1" = ["NAME","SUBSCRIPTION ID","TENANT ID","CLIENT ID","CLIENT PASSWORD"]
#   "2" = ["NAME","SUBSCRIPTION ID","TENANT ID","CLIENT ID","CLIENT PASSWORD"]
  }

aws-onboard   = true
aws-op-mode   = "ReadOnly"
aws-accounts  = {
        "0" = ["NAME","ARN","SECRET"]
#       "1" = ["NAME","ARN","SECRET"]
#       "2" = ["NAME","ARN","SECRET"]        
    }

```
If you want (or need) to further customize other project details, you can change defaults in the different __*name-variables.tf*__ files.   
Here you will also able to find the descriptions that explains what each variable is used for.