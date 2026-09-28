module "gke" {
  source = "../../modules/gke-cluster"

  project_id   = var.project_id
  cluster_name = "dev-gke-cluster"
  zone       = "us-central1-a"
  node_count   = 1
  machine_type = "e2-small" 
  deletion_protection = false
}

output "dev_cluster_endpoint" {
  value = module.gke.cluster_endpoint
}