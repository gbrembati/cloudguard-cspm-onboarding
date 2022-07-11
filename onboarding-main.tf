
# Onboarding of your Azure Accounts
resource "dome9_cloudaccount_azure" "onboard-az-account" {
  count = var.azure-onboard ? length(var.azure-accounts) : 0

  name                   = lookup(var.azure-accounts,count.index)[0]
  operation_mode         = var.azure-op-mode
  subscription_id        = lookup(var.azure-accounts,count.index)[1]
  tenant_id              = var.azure-app-tenant-id
  client_id              = var.azure-app-client-id
  client_password        = var.azure-app-client-key
}

# Onboarding of your AWS Accounts
resource "dome9_cloudaccount_aws" "onboard-aws-account" {
  count = var.aws-onboard ? length(var.aws-accounts) : 0
 
  name  = lookup(var.aws-accounts, count.index)[0]
  credentials  {
    arn    = lookup(var.aws-accounts, count.index)[1]
    secret = lookup(var.aws-accounts, count.index)[2]
    type   = "RoleBased"
  } 

  net_sec {
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "us_east_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "us_west_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "eu_west_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "ap_southeast_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "ap_northeast_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "us_west_2"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "sa_east_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "ap_southeast_2"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "eu_central_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "ap_northeast_2"
    }	
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "ap_south_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "us_east_2"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "ca_central_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "eu_west_2"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "eu_west_3"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "eu_north_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "ap_east_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "me_south_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "af_south_1"
    }
    regions {
      new_group_behavior = var.aws-op-mode
      region             = "eu_south_1"
    }
  }
  depends_on = [dome9_organizational_unit.my-org-unit]
}
