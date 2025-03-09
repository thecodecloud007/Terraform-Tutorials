terraform {
    backend "gcs" {
        bucket = "my-gcp-project-x-state"
        prefix = "terraform/state"
        credentials = "gcs-secret.json"
    }
}