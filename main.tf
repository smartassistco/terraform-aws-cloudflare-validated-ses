resource "aws_ses_domain_identity" "this" {
  domain = var.ses_domain
}

resource "aws_ses_domain_dkim" "this" {
  domain = aws_ses_domain_identity.this.domain
}

locals {
  subdomain        = join(".", slice(split(".", var.ses_domain), 0, length(split(".", var.ses_domain)) - 2))
  subdomain_suffix = length(local.subdomain) > 0 ? ".${local.subdomain}" : ""
}

resource "cloudflare_record" "cname_dkim" {
  count = 3

  zone_id = var.cloudflare_zone_id
  name    = "${element(aws_ses_domain_dkim.this.dkim_tokens, count.index)}._domainkey${local.subdomain_suffix}"
  value   = "${element(aws_ses_domain_dkim.this.dkim_tokens, count.index)}.dkim.amazonses.com"
  type    = "CNAME"
  ttl     = 1
  proxied = false
}

resource "aws_ses_domain_identity_verification" "this" {
  domain = aws_ses_domain_identity.this.id

  depends_on = [cloudflare_record.cname_dkim]
}
