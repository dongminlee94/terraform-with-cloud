<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.20.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.20.0 |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/eks_cluster) | resource |
| [aws_eks_node_group.eks_node_group](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/eks_node_group) | resource |
| [aws_iam_role.eks_nodes_role](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/iam_role) | data source |
| [aws_iam_role.eks_service_role](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/iam_role) | data source |
| [aws_subnet.private_subnet](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eks_cluster_endpoint_private_access"></a> [eks\_cluster\_endpoint\_private\_access](#input\_eks\_cluster\_endpoint\_private\_access) | EKS Cluster - endpoint private access | `bool` | n/a | yes |
| <a name="input_eks_cluster_endpoint_public_access"></a> [eks\_cluster\_endpoint\_public\_access](#input\_eks\_cluster\_endpoint\_public\_access) | EKS Cluster - endpoint public access | `bool` | n/a | yes |
| <a name="input_eks_cluster_version"></a> [eks\_cluster\_version](#input\_eks\_cluster\_version) | EKS Cluster - version | `string` | n/a | yes |
| <a name="input_eks_name"></a> [eks\_name](#input\_eks\_name) | EKS Cluster - name | `string` | n/a | yes |
| <a name="input_eks_node_group_ami"></a> [eks\_node\_group\_ami](#input\_eks\_node\_group\_ami) | EKS Node Group - AMI | `string` | n/a | yes |
| <a name="input_eks_node_group_desired_size"></a> [eks\_node\_group\_desired\_size](#input\_eks\_node\_group\_desired\_size) | EKS Node Group - desired size | `number` | n/a | yes |
| <a name="input_eks_node_group_disk_size"></a> [eks\_node\_group\_disk\_size](#input\_eks\_node\_group\_disk\_size) | EKS Node Group - disk size | `string` | n/a | yes |
| <a name="input_eks_node_group_instance_types"></a> [eks\_node\_group\_instance\_types](#input\_eks\_node\_group\_instance\_types) | EKS Node Group - instance type | `list(string)` | n/a | yes |
| <a name="input_eks_node_group_max_size"></a> [eks\_node\_group\_max\_size](#input\_eks\_node\_group\_max\_size) | EKS Node Group - max size | `number` | n/a | yes |
| <a name="input_eks_node_group_max_unavailable"></a> [eks\_node\_group\_max\_unavailable](#input\_eks\_node\_group\_max\_unavailable) | EKS Node Group - max unavailable | `number` | n/a | yes |
| <a name="input_eks_node_group_min_size"></a> [eks\_node\_group\_min\_size](#input\_eks\_node\_group\_min\_size) | EKS Node Group - min size | `number` | n/a | yes |
| <a name="input_eks_nodes_role_name"></a> [eks\_nodes\_role\_name](#input\_eks\_nodes\_role\_name) | IAM - EKS nodes role name | `string` | n/a | yes |
| <a name="input_eks_service_role_name"></a> [eks\_service\_role\_name](#input\_eks\_service\_role\_name) | IAM - EKS service role name | `string` | n/a | yes |
| <a name="input_private_subnet_names"></a> [private\_subnet\_names](#input\_private\_subnet\_names) | Subnet - private subnet names | `list(string)` | n/a | yes |
<!-- END_TF_DOCS -->
