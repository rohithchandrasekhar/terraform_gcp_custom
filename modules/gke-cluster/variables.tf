variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "cluster_name" {
  type        = string
  description = "Name of the GKE cluster"
}

variable "region" {
  type        = string
  description = "GCP Region"
  default     = "us-central1"
}

variable "node_count" {
  type        = number
  description = "Number of nodes per zone in the default node pool"
  default     = 1
}

variable "machine_type" {
  type        = string
  description = "GCE instance type for cluster nodes"
  default     = "e2-small"
}