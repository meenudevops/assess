provider "google" {
  credentials = "southern-splice-330005-c06109f1c7f8.json"
  project     = var.project
  region      = var.region
}

module "newnet" {
  source = "./modules"
}

