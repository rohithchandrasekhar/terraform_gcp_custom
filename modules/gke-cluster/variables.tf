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

variable "zone" {
  type        = string
  description = "GCP Zone for the GKE cluster (e.g., us-central1-a)"
  default     = "us-central1-a"
}

variable "deletion_protection" {
  type        = bool
  description = "Whether deletion protection is enabled for the GKE cluster"
  default     = false
}