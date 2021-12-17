provider "google" {
credentials = file("southern-splice-330005-770f44521d19.json")
project = var.project
region = var.region
}

module "vpc" {
	source = ""
	project_id = var.project
	routing_mode = "GLOBAL"
}

module "sbn1" {
	source = ""
	network_name = "${module.vpc.newnet.id}"
}