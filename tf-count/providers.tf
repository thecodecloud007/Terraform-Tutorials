provider "google" {
  credentials = file("gcs-secret.json")
  project     = var.project_id
  region      = var.region
  
}