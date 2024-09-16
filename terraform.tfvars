
  resource_group_name  = "myrg-yashank"
  location           = "West Europe"
  tags               = { "env" : "production" }
  vnet_name = "myvnet-yashank"
  cidr_block = [ "10.0.0.0/16" ]
  subnet_cidr_block = [ "10.0.2.0/24" ]
  subnet_name = "mysubnet-yashank"
  public_ip_address = "mypublicip-yashank"
  diskSize = "Standard_DS1_v2"
  nic_name = "mynic_yashank"
  nsg_name = "mynsg-yashank"
