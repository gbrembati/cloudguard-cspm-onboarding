# Set in this file your deployment variables
cspm-key-id     = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
cspm-key-secret = "xxxxxxxxxxxxxxxxxxxx"

azure-onboard   = true
azure-op-mode   = "Read"

azure-app-client-id   = "xxxxxxxxxxxxxxxxxxxx"
azure-app-client-key  = "xxxxxxxxxxxxxxxxxxxx"
azure-app-tenant-id   = "xxxxxxxxxxxxxxxxxxxx"
azure-accounts  =  {
        "0" = ["NAME","SUBSCRIPTION ID"]
#       "1" = ["NAME","SUBSCRIPTION ID"]
#       "2" = ["NAME","SUBSCRIPTION ID"]
}

aws-onboard   = true
aws-op-mode   = "ReadOnly"
aws-accounts  = {
        "0" = ["NAME","ARN","SECRET"]
#       "1" = ["NAME","ARN","SECRET"]
#       "2" = ["NAME","ARN","SECRET"]        
}