output "domain_identity" {
  description = "Validated SES domain identity"
  value       = aws_ses_domain_identity.this
}

output "verified_identity" {
  description = "Resource representing the successful verification of the domain identity"
  value       = aws_ses_domain_identity_verification.this
}
