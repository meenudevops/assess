provider "google" {
  credentials = "southern-splice-330005-77c973808679.json"
  project     = "southern-splice-330005"
}
resource "google_storage_bucket" "mygcsbucket010" {
  name          = "new-bucket1"
  location      = "US"
  force_destroy = true
}