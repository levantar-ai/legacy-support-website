# Route 53 record for legacyexpert.levantar.ai pointing to CloudFront
resource "aws_route53_record" "website" {
  zone_id = data.aws_route53_zone.levantar_ai.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.website.domain_name
    zone_id                = aws_cloudfront_distribution.website.hosted_zone_id
    evaluate_target_health = false
  }
}
