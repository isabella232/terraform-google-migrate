/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 

output "project_info_example" {
  value       = module.project-factory.project_id
  description = "The ID of the created project"
}

output "domain_example" {
  value       = module.project-factory.domain
  description = "The organization's domain"
}

output "network_name" {
  value       = module.test-vpc-module.network_name
  description = "The name of the VPC being created"
}

output "network_self_link" {
  value       = module.test-vpc-module.network_self_link
  description = "The URI of the VPC being created"
}

output "subnets_names" {
  value       = module.test-vpc-module.subnets_names
  description = "The names of the subnets being created"
}

output "subnets_ips" {
  value       = module.test-vpc-module.subnets_ips
  description = "The IP and cidrs of the subnets being created"
}

output "subnets_regions" {
  value       = module.test-vpc-module.subnets_regions
  description = "The region where subnets will be created"
}

output "subnets_private_access" {
  value       = module.test-vpc-module.subnets_private_access
  description = "Whether the subnets will have access to Google API's without a public IP"
}

output "subnets_flow_logs" {
  value       = module.test-vpc-module.subnets_flow_logs
  description = "Whether the subnets will have VPC flow logs enabled"
}

output "subnets_secondary_ranges" {
  value       = module.test-vpc-module.subnets_secondary_ranges
  description = "The secondary ranges associated with these subnets"
}

output "routes" {
  value       = module.test-vpc-module.routes
  description = "The routes associated with this VPC"
}

output "network_name" {
  value       = google_compute_network.network.name
  description = "The name of the VPC being created"
}

output "network_self_link" {
  value       = google_compute_network.network.self_link
  description = "The URI of the VPC being created"
}

output "svpc_host_project_id" {
  value       = element(concat(google_compute_shared_vpc_host_project.shared_vpc_host.*.project, list("")), 0)
  description = "Shared VPC host project id."
}

output "subnets_names" {
  value       = google_compute_subnetwork.subnetwork.*.name
  description = "The names of the subnets being created"
}

output "subnets_ips" {
  value       = google_compute_subnetwork.subnetwork.*.ip_cidr_range
  description = "The IPs and CIDRs of the subnets being created"
}

output "subnets_self_links" {
  value       = google_compute_subnetwork.subnetwork.*.self_link
  description = "The self-links of subnets being created"
}

output "subnets_regions" {
  value       = google_compute_subnetwork.subnetwork.*.region
  description = "The region where the subnets will be created"
}

output "subnets_private_access" {
  value       = google_compute_subnetwork.subnetwork.*.private_ip_google_access
  description = "Whether the subnets will have access to Google API's without a public IP"
}

output "subnets_flow_logs" {
  value       = google_compute_subnetwork.subnetwork.*.enable_flow_logs
  description = "Whether the subnets will have VPC flow logs enabled"
}

output "subnets_secondary_ranges" {
  value       = data.google_compute_subnetwork.created_subnets.*.secondary_ip_range
  description = "The secondary ranges associated with these subnets"
}

output "routes" {
  value       = google_compute_route.route.*.name
  description = "The routes associated with this VPC"
}

*/
output "velos_project_id" {
  value       = module.velo-project.project_id
  description = "The ID of the velo project"
}

output "prod_project_id" {
  value       = module.prod-project.project_id
  description = "The ID of the prod project"
}

output "stage_project_id" {
  value       = module.stage-project.project_id
  description = "The ID of the stage project"
}

output "test_project_id" {
  value       = module.test-project.project_id
  description = "The ID of the test project"
}

output "network_name" {
  value       = module.vpc.network_name
  description = "The name of the VPC being created"
}

output "velos_migration_manager_svc" {
  value       = google_service_account.velos-manager.email
  description = "Service account for Manager Service"
}
output "velos_compute_engine_cloud_extension_svc" {
  value       = google_service_account.velos-cloud-extension.email
  description = "Service account for Compute Engine Cloud Extension"
}

