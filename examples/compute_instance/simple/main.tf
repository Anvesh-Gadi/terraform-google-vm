/**
 * Copyright 2018 Google LLC
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
 */

module "instance_template" {
  source  = "terraform-google-modules/vm/google//modules/instance_template"
  version = "~> 0.14"

  region          = var.region
  project_id      = var.project_id
  subnetwork      = var.subnetwork
  service_account = var.service_account
}

module "compute_instance" {
  source  = "terraform-google-modules/vm/google//modules/compute_instance"
  version = "~> 0.14"

  region              = var.region
  zone                = var.zone
  subnetwork          = var.subnetwork
  num_instances       = var.num_instances
  hostname            = "instance-simple"
  instance_template   = module.instance_template.self_link
  deletion_protection = false

  access_config = [{
    nat_ip       = var.nat_ip
    network_tier = var.network_tier
  }, ]
}
terraform {
  backend "http" {
    address = "https://app.harness.io/gateway/iacm/api/orgs/default/projects/ContinuousIntegration/workspaces/prasannaworkspace/terraform-backend?accountIdentifier=ucHySz2jQKKWQweZdXyCog"
    username = "harness"
    lock_address = "https://https://app.harness.io/gateway/iacm/api/orgs/default/projects/ContinuousIntegration/workspaces/prasannaworkspace/terraform-backend/lock?accountIdentifier=ucHySz2jQKKWQweZdXyCog"
    lock_method = "POST"
    unlock_address = "https://https://app.harness.io/gateway/iacm/api/orgs/default/projects/ContinuousIntegration/workspaces/prasannaworkspace/terraform-backend/lock?accountIdentifier=ucHySz2jQKKWQweZdXyCog"
    unlock_method = "DELETE"
  }
}
