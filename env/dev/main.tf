module "gke" {
  source = "../../modules/gke-cluster"

  project_id   = var.project_id
  cluster_name = "dev-gke-cluster"
  region       = "us-central1"
  node_count   = 1
  machine_type = "e2-small"
}

output "dev_cluster_endpoint" {
  value = module.gke.cluster_endpoint
}