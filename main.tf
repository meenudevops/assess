terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.4.0"
    }
  }
  backend "gcs" {
    bucket      = "new-bucket1"
    credentials = "southern-splice-330005-77c973808679.json"
    prefix      = "terraform/state"
  }
}

provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}

module "newnet" {
  source = "./modules"
}

