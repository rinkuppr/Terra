provider "aws" {
	region = "us-west-1"
}

terraform {
	backend "s3" {
		bucket = "terra-buckets3"
		key = "terraform.tfstate"
		region = "us-west-1"
	}
}

resource "aws_instance" "terra_inst" {
	ami = "ami-082db34963ec94062"
	instance_type = "t2.micro"
	tags = {
		Name = "rinku-terra-insta"
	}
}
