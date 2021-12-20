resource "google_compute_subnetwork" "subnet2" {
 name          = "subnet2"
 ip_cidr_range = "192.168.1.0/24"
 region        = "us-central1"
 network       = google_compute_network.vpc_network.id
}