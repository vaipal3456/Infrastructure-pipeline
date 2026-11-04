output "subnet_id" {
  value = {
    for k, subnet in azurerm_subnet.subnet-app :
    k => subnet.id
  }
}