devrgapp = {
  rg-app = {
    name     = "rg-app"
    location = "East US"
  }
}
stgapp = {
  stg-app = {
    name     = "stgapp1"
    resource_group_name = "rg-app"
    location = "East US"
    account_tier = "Standard"
    account_replication_type = "LRS"
  }
}
dev-container = {
  container-app = {
    name     = "container-app"
    resource_group_name = "rg-app"
    storage_account_name = "stgapp1"
    container_access_type = "private"
    location = "East US"
  }
}
dev-vnet = {
  vnet-app = {
    name                 = "vnet-app"
    address_space        = ["10.0.0.0/16"]
    resource_group_name  = "rg-app"
    location             = "East US"
  }
}
dev-subnet = {
  subnet-app = {
    name                 = "subnet-app"
    resource_group_name  = "rg-app"
    virtual_network_name = "vnet-app"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
