resource "google_compute_network" "vpc_network" {
    name                    = "newnet"
    auto_create_subnetworks = false
    mtu                     = 1460
   
}
