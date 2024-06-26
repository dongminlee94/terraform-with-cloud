<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 5.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.5.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_address.gce_address](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_address) | resource |
| [google_compute_instance.gce_instance](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_instance) | resource |
| [google_compute_resource_policy.gce_resource_policy](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_resource_policy) | resource |
| [google_compute_subnetwork.subnetwork](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/data-sources/compute_subnetwork) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gce_address_enable"></a> [gce\_address\_enable](#input\_gce\_address\_enable) | GCE - address enable/disable | `bool` | n/a | yes |
| <a name="input_gce_address_name"></a> [gce\_address\_name](#input\_gce\_address\_name) | GCE - NAT IP address name | `string` | n/a | yes |
| <a name="input_gce_boot_disk_image"></a> [gce\_boot\_disk\_image](#input\_gce\_boot\_disk\_image) | GCE - boot disk image | `string` | n/a | yes |
| <a name="input_gce_boot_disk_size"></a> [gce\_boot\_disk\_size](#input\_gce\_boot\_disk\_size) | GCE - boot disk size | `number` | n/a | yes |
| <a name="input_gce_instance_enable"></a> [gce\_instance\_enable](#input\_gce\_instance\_enable) | GCE - instance enable/disable | `bool` | n/a | yes |
| <a name="input_gce_instance_name"></a> [gce\_instance\_name](#input\_gce\_instance\_name) | GCE - name | `string` | n/a | yes |
| <a name="input_gce_machine_type"></a> [gce\_machine\_type](#input\_gce\_machine\_type) | GCE - machine type | `string` | n/a | yes |
| <a name="input_gce_public_key"></a> [gce\_public\_key](#input\_gce\_public\_key) | GCE - ssh public key | `string` | n/a | yes |
| <a name="input_gce_sa_email"></a> [gce\_sa\_email](#input\_gce\_sa\_email) | GCE - service account email | `string` | n/a | yes |
| <a name="input_gce_service_scopes"></a> [gce\_service\_scopes](#input\_gce\_service\_scopes) | GCE - service scopes | `list(string)` | n/a | yes |
| <a name="input_gce_tags"></a> [gce\_tags](#input\_gce\_tags) | GCE - tags | `list(string)` | n/a | yes |
| <a name="input_gce_user_name"></a> [gce\_user\_name](#input\_gce\_user\_name) | GCE - user name | `string` | n/a | yes |
| <a name="input_gce_zone"></a> [gce\_zone](#input\_gce\_zone) | GCE - zone | `string` | n/a | yes |
| <a name="input_rp_days_in_cycle"></a> [rp\_days\_in\_cycle](#input\_rp\_days\_in\_cycle) | Resource policy - schedule interval | `number` | n/a | yes |
| <a name="input_rp_enable"></a> [rp\_enable](#input\_rp\_enable) | Resource policy - enable/disable | `bool` | n/a | yes |
| <a name="input_rp_label"></a> [rp\_label](#input\_rp\_label) | Resource policy - tag | `string` | n/a | yes |
| <a name="input_rp_max_retention_days"></a> [rp\_max\_retention\_days](#input\_rp\_max\_retention\_days) | Resource policy - max retention days | `number` | n/a | yes |
| <a name="input_rp_name"></a> [rp\_name](#input\_rp\_name) | Resource policy - name | `string` | n/a | yes |
| <a name="input_rp_start_time"></a> [rp\_start\_time](#input\_rp\_start\_time) | Resource policy - start time | `string` | n/a | yes |
| <a name="input_subnetwork_name"></a> [subnetwork\_name](#input\_subnetwork\_name) | Subnet - name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
