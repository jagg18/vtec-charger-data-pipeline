variable "credentials" {
  description = "My Credentials"
  type = map(string)
  default =  {
    dev = "~/keys/my-creds.json"
    prod   = "~/keys/my-creds.json"
  }
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
  type = map(string)
  default = {
    dev = "vtec-ekm-data-bucket-dev"
    prod   = "vtec-ekm-data-bucket"
  }
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}