resource "google_compute_subnetwork" "subnet1" {
 name         = "snet1"
ip_cidr_range = "10.0.0.0/24"
region        = "us-central1"
 depends_on   = [google_compute_network.vpc_network]
 network      = google_compute_network.vpc_network.id
}