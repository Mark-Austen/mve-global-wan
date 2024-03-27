terraform {
  required_providers {
    megaport = {
      source  = "megaport/megaport"
    }
  }
}

provider "megaport" {
  access_key            = "<api-key>"
  secret_key            = "<api-secret>"
  accept_purchase_terms = true
  delete_ports          = true
  environment           = "staging"
}
