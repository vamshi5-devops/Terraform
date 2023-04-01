resource "aws_s3_bucket" "test" {
  bucket = "terraform-creating-test"


  tags = {
    Name        = "terraform-creating-test"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.test.id
  acl    = "private"
}

