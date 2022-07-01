module "mail_domain_ses" {
  source = "smartassistco/cloudflare-validated-ses/aws"

  ses_domain         = "mail.example.com"
  cloudflare_zone_id = "xxxxxxxxxxxxxxxxxx"
}
