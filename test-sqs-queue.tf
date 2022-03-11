terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
      access_key = "NOTEXACTLYAK3Y"
      secret_key = "NOTACTUALLYASERRRR13ZZT"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}


resource "aws_sqs_queue" "test-queue" {
  name = "test-queue-3"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Id": "test-Queue-Policy",
    "Statement": [
      {
        "Sid": "03503052",
        "Action": "sqs:SendMessage",
        "Effect": "Allow",
        "Resource": "arn:aws:sqs:eu-west-1:050505:test-queue",
        "Principal": "*"
      }
    ]
}
EOF
}
