locals {
  region      = "East US"
  environment = "demo"
  name        = "skaf"
}

module "backend" {
  source = "squareops/tfstate/azurerm"

  resource_group_name     = local.name
  storage_account_name    = local.name
  storage_container_name  = "tfstate" # unique storage container name
  resource_group_location = local.region
  environment             = local.environment
}
