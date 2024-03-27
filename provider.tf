terraform {
  required_providers {
    megaport = {
      source  = "megaport/megaport"
    }
  }
}

provider "megaport" {
  access_key            = "5cc4elta6qjkm84n7ohn4ptk1p"
  secret_key            = "1jphgpihursv7hv9dd9hu9ugnvr2t0d80nrbao23apm5cgilegbo"
  accept_purchase_terms = true
  delete_ports          = true
  environment           = "staging"
}