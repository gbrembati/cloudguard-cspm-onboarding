terraform {
  required_providers {
    dome9 = {
      source = "dome9/dome9"
      version = "~> 1.27.1"
    }
  }
}

# API credentials to connect to your CSPM account
provider "dome9" {
  base_url          = var.cspm-api-endpoint
  dome9_access_id   = var.cspm-key-id
  dome9_secret_key  = var.cspm-key-secret
}
