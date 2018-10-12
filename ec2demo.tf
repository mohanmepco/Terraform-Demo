 provider "aws" {
  access_key = "AKIAJ744FKNCWRQIV4PA"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_instance" "Terraform-Demo" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-50"
  acl    = "private"

  tags {
    Name        = "mohan9330"
    Environment = "Dev"
  }
}
