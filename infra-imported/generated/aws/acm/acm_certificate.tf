resource "aws_acm_certificate" "tfer--9892757f-83b6-404a-a5cd-5b72f0df421f_d2s5kr8fysj3pd-002E-cloudfront-002E-net" {
  domain_name = "d2s5kr8fysj3pd.cloudfront.net"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["d2s5kr8fysj3pd.cloudfront.net"]
  validation_method         = "DNS"
}
