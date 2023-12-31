module "firewall" {
  source = "../../modules/firewall"

  network_name = "network"

  firewall_name     = "firewall"
  common_cidr_block = "0.0.0.0/0"
  target_tags       = ["gcp"]
}
