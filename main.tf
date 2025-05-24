provider "google" {
  project = var.project_id
  region  = var.region
}

module "cloud_run" {
  source       = "./modules/cloud-run"
  service_name = "hello-service"
  location     = var.region
  image        = "gcr.io/cloudrun/hello"
}
