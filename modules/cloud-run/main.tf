resource "google_cloud_run_service" "hello" {
  name     = var.service_name
  location = var.location

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
