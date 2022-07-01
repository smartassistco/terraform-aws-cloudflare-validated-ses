<!-- BEGIN_TF_DOCS -->
# Cloudflare-validated SES Domain Terraform Module

## What does it do?

Creates SES domain identity and validates it with Cloudflare records

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.15, < 5.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | >= 3.15, < 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.15, < 5.0 |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | >= 3.15, < 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ses_domain_dkim.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_dkim) | resource |
| [aws_ses_domain_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_identity) | resource |
| [aws_ses_domain_identity_verification.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_identity_verification) | resource |
| [cloudflare_record.cname_dkim](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_zone_id"></a> [cloudflare\_zone\_id](#input\_cloudflare\_zone\_id) | Cloudflare Zone ID to use for updating records | `string` | n/a | yes |
| <a name="input_ses_domain"></a> [ses\_domain](#input\_ses\_domain) | Domain to be validated in SES. e.g. mail.example.com | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_domain_identity"></a> [domain\_identity](#output\_domain\_identity) | Validated SES domain identity |
| <a name="output_verified_identity"></a> [verified\_identity](#output\_verified\_identity) | Resource representing the successful verification of the domain identity |
<!-- END_TF_DOCS -->
