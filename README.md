# terraform-google-vm

This is a simple, minimal example of how to use the compute_instance module

Inputs
Name	Description	Type	Default	Required
nat_ip	Public ip address	any	null	no
network_tier	Network network_tier	string	"PREMIUM"	no
num_instances	Number of instances to create	any	n/a	yes
project_id	The GCP project to use for integration tests	string	n/a	yes
region	The GCP region to create and test resources in	string	"us-central1"	no
service_account	Service account to attach to the instance. See https://www.terraform.io/docs/providers/google/r/compute_instance_template.html#service_account.	
object({
    email  = string,
    scopes = set(string)
  })
null	no
subnetwork	The subnetwork selflink to host the compute instances in	any	n/a	yes
Outputs
Name	Description
available_zones	List of available zones in region
instances_self_links	List of self-links for compute instances
