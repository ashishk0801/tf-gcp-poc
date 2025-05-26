terraform {
  backend "gcs" {
    bucket  = "tf-statefile001"
    prefix  = "terraform/state"
  }
}
