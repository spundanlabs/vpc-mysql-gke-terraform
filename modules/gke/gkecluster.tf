resource "google_container_cluster" "cluster-gke-beta-b" {
  name               = "my-first-gke-cluster-b"
  network            = "default"
  zone               = "europe-west1-b"
  initial_node_count = 1
}