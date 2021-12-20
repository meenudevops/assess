provider "google" {
  //credentials = file("southern-splice-330005-770f44521d19.json")
  project     = var.project
  region      = var.region
}

module "newnet" {
  source = "./modules"
}

