terraform {
  required_version = ">= 1.3.0"

   backend "gcs" {
    bucket = " rohith-terraform-tf-state-dev"  # Replace with your GCS bucket name
    prefix = "terraform/state/dev"     # Path inside the bucket to isolate state
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}


provider "google" {
  project = var.project_id
  region  = var.region
}