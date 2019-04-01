provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state-ian"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = false
  }
}
 output "s3_bucket_arn" {
   value = "${aws_s3_bucket.terraform_state.arn}"
 }