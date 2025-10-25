parent_rg = {
  "rg1" = {
    resource_group_name = "preprod-rg"
    location            = "Australia East"
    tags = {
      ManagedBy   = "Terraform"
      environment = "preprod"
      project     = "monolithic-app"
    }
} }

parent_networks = {
  "vnet1" = {
    vnet_name           = "preprod-vnet1"
    address_space       = ["10.0.0.0/16"]
    location            = "Australia East"
    resource_group_name = "preprod-rg"
    tags = {
      ManagedBy   = "Terraform"
      environment = "preprod"
      project     = "monolithic-app"
    }
    subnets = {
      "subnet1" = {
        subnet_name           = "preprod-frontend-subnet"
        subnet_address_prefix = ["10.0.1.0/24"]
      }
      "subnet2" = {
        subnet_name           = "preprod-backend-subnet"
        subnet_address_prefix = ["10.0.2.0/24"]
      }
    }
} }
