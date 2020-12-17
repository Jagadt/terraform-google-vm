variable "project_id" {
  description = "Provide the GCP projectid"
  type        = string
}

variable "region" {
  description = "provide the GCP region to create and test resources in"
  type        = string
  default     = "europe-west2"
}

variable "subnetwork" {
  description = "The name of the subnetwork create this instance in."
  }

variable "service_account" {
  default = null
  type = object({
    email  = string
    scopes = set(string)
  })
  description = "Service account to attach to the instance. See https://www.terraform.io/docs/providers/google/r/compute_instance_template.html#service_account."
}

variable "tags" {
  type        = list(string)
  description = "Network tags, provided as a list"
}

variable "labels" {
  type        = map(string)
  description = "Labels, provided as a map"
}
