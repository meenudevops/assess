resource "google_compute_subnetwork" "subnet1" {
 name = "subnet1"
ip_cidr_range = "10.0.0.0/24"
region = "us-west1"
 network = google_compute_network.vpc_network.id
}