provider "google" {
  project = var.project_id
  region  = var.region
}



module "cloud_run" {
  source       = "./modules/cloud-run"
  service_name = var.service_name
  location     = var.region
  image        = "us-docker.pkg.dev/cloudrun/container/hello"
}

