resource_group = {
  rg1 = {
    name     = "rahulbhatt"
    location = "east asia"
  }
}

virtual_network = {
  vnet1 = {
    name                = "vnet_rahul"
    address_space       = ["10.0.0.0/16"]
    location            = "east asia"
    resource_group_name = "rahulbhatt"
  }
}

subnet = {
  subnet1 = {
    name                 = "subnet_rahul"
    resource_group_name  = "rahulbhatt"
    virtual_network_name = "vnet_rahul"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

pip = {
  pip1 = {
    name                = "pip_rahul"
    resource_group_name = "rahulbhatt"
    location            = "east asia"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}

vms = {
  vm1 = {
    nic_name             = "nic_rahul"
    location             = "east asia"
    resource_group_name  = "rahulbhatt"
    ip_name              = "internal"
    subnet_name          = "subnet_rahul"
    pip_name             = "pip_rahul"
    vm_name              = "vm_rahul"
    virtual_network_name = "vnet_rahul"


  }
}

