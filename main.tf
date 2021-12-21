provider "google" {
  credentials = "C:/Users/meenu.m.nair/Downloads/southern-splice-330005-c06109f1c7f8.json"
  project     = var.project
  region      = var.region
}

module "newnet" {
  source = "./modules"
}

