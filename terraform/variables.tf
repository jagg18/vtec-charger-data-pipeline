variable "credentials" {
  description = "My Credentials"
  default     = "~/keys/my-creds.json"
}

variable "project" {
  description = "Project"
  default     = "vtec-charger-data"
}

variable "region" {
  description = "Region"
  default     = "us-central1"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "gcs_ekm_bucket_name" {
  description = "EKM Data Bucket"
  default     = "vtec-ekm-data-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}

variable "bq_dataset_name" {
  description = "Dataset Name"
  default     = "vtec_charger_dataset"
}