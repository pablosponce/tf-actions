resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-pablo"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.b.bucket
  key    = "index.html"
  content = "Hola Mundo"
}
