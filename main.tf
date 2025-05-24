provider "google" {
  project = var.project_id
  region  = var.region
}

module "cloud_run" {
  source       = "github.com/ashishk0801/tf-gcp-poc/blob/master/modules/cloud-run/main.tf"
  service_name = "hello-service"
  location     = var.region
  image        = "gcr.io/cloudrun/hello"
}
