provider "aws" {
  region  = "us-east-1"
}


resource "aws_route53_zone" "example" {
  name = "example1234512345.com"
}

resource "aws_route53_record" "services" {
  zone_id = "${aws_route53_zone.example.zone_id}"
  name 	= "services"
  type 	= "A"
  ttl   = "3600"
  records        = ["10.10.10.10"]
}