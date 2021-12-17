resource "google_compute_network" "newnet" {
    name = "newnet"
    auto_create_subnetworks =false
}