module "network" {
  source       = "./modules/network"
  network_name = "sre-vpc"
}
module "compute" {
  source       = "./modules/compute"
  vm_name      = var.vm_name
  zone         = var.zone
  network_id   = module.network.network_id
}
module "iam" {
  source     = "./modules/iam"
  project_id = var.project_id
}
