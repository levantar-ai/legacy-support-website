terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {}
}

provider "aws" {
  region = var.aws_region
}

# us-east-1 provider required for CloudFront certificates
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}

variable "domain_name" {
  description = "Domain name for the website"
  type        = string
  default     = "legacyexpert.levantar.ai"
}

variable "hosted_zone_name" {
  description = "Route53 hosted zone name"
  type        = string
  default     = "levantar.ai"
}

data "aws_caller_identity" "current" {}
