terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials[terraform.workspace])
  project     = var.project
  region      = var.region
}

resource "google_storage_bucket" "ekm_bucket" {
  name          = var.gcs_ekm_bucket_name[terraform.workspace]
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}