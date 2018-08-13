provider "aws" {
  region  = "us-east-1"
}


resource "aws_route53_record" "services" {
	
	zone_id = "test"
	name 	= "services"
	type 	= "A"

}