## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_scaleway"></a> [scaleway](#requirement\_scaleway) | 2.27.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_scaleway"></a> [scaleway](#provider\_scaleway) | 2.27.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [scaleway_vpc.vpc](https://registry.terraform.io/providers/scaleway/scaleway/2.27.0/docs/resources/vpc) | resource |
| [scaleway_vpc_private_network.private_network](https://registry.terraform.io/providers/scaleway/scaleway/2.27.0/docs/resources/vpc_private_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ipv4_subnet"></a> [ipv4\_subnet](#input\_ipv4\_subnet) | Ipv4 subet | `string` | `"172.16.0.0/24"` | no |
| <a name="input_private_network_name"></a> [private\_network\_name](#input\_private\_network\_name) | Name of the network | `string` | `""` | no |
| <a name="input_private_network_tags"></a> [private\_network\_tags](#input\_private\_network\_tags) | List of private network tags | `list(string)` | `[]` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project id | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `null` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Vpc name | `string` | `"vpc01"` | no |
| <a name="input_vpc_tags"></a> [vpc\_tags](#input\_vpc\_tags) | List of vpc tags | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_network_id"></a> [private\_network\_id](#output\_private\_network\_id) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
