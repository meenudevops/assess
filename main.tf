provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}

module "newnet" {
  source = "./modules"
}

