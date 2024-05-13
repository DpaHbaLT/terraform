module "gke_cluster" {
  source         = "github.com/DpaHbaLT/terraform"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}

terraform {
  backend "gcs" {
    bucket = "terraform"
    prefix = "terraform/state"
  }
}