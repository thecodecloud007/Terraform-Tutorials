terraform {
    backend "gcs" {
        bucket = "my-gcp-project-451114-state"
        prefix = "terraform/state"
        credentials = "gcs-secret.json"
    }
}