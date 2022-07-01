variable "ses_domain" {
  description = "Domain to be validated in SES. e.g. mail.example.com"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID to use for updating records"
  type        = string
}
