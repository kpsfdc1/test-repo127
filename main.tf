provider "aws" {
	region = "ap-south-1"
}

terraform {
backend "s3" {
	bucket = "terrafrom-cis-bucket"
	key = "terraform.tfstate"
	region = "ap-south-1"

  }
}


resource "aws_instance" "tf_inst" {
	instance_type = "t2.micro"
	ami = "ami-0597375488017747e"
	tags = {
		Name = "tf_inst_test"
	}
}
