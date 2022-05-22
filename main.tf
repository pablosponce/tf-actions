resource "aws_s3_bucket" "b" {
  bucket = "tf-actions-lab"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.b.bucket
  key    = "index.html"
  content = "Hola Mundo"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.b.id
  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_s3_object" "config" {
  bucket = aws_s3_bucket.b.bucket
  key    = "config.xml"
  content = "MiConfig"
}
