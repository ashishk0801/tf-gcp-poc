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

resource "google_cloud_run_service_iam_member" "public_invoker" {
  service  = google_cloud_run_service.hello.name
  location = google_cloud_run_service.hello.location
  role     = "roles/run.invoker"
  member   = "allUsers"
}
