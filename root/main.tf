module "rg" {
  source = "../modules/rg"
  devrgapp = var.devrgapp
}
module "storage" {
  depends_on = [module.rg]
  source = "../modules/storage"
  stgapp = var.stgapp
}
module "container" {
  depends_on = [module.rg, module.storage]
  source = "../modules/container"
  dev-container = var.dev-container
}
module "vnet" {
  depends_on = [module.rg]
  source = "../modules/vnet"
  dev-vnet = var.dev-vnet
}
module "subnet" {
  depends_on = [module.vnet]
  source = "../modules/subnet"
  dev-subnet = var.dev-subnet
}