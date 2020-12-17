resource "google_compute_address" "ip_address" {
  name = "external-ip"
}

locals {
  access_config = {
    nat_ip       = google_compute_address.ip_address.address
    network_tier = "PREMIUM"
  }
}

module "instance_template" {
source          = "./instance_template"
#locals {
  project_id      = var.project_id
  subnetwork      = var.subnetwork
  service_account = var.service_account
  name_prefix     = "simple"
  tags            = var.tags
  labels          = var.labels
# access_config   = [local.access_config]
}
