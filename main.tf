



provider "google" {
credentials = file("C:/Users/meenu.m.nair/Downloads/southern-splice-330005-770f44521d19.json")
//version = "4.4.0"
project = "southern-splice-330005"
region = "us-west1"
}
resource "google_compute_network" "vpc_network" {
name = "terraform-network143"
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "public-subnetwork" {
name = "terraform-subnetwork143"
ip_cidr_range = "10.2.0.0/16"
region = "us-central1"
network = google_compute_network.vpc_network.name
}