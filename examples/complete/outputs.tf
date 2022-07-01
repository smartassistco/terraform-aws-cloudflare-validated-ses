output "ses_identity_arn" {
  value = module.mail_domain_ses.verified_identity.arn
}
