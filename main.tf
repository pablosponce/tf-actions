resource "aws_s3_bucket" "b" {
  bucket = "tf-actions-lab"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.b.bucket
  key    = "index.html"
  content = "Hola Mundo"
}
