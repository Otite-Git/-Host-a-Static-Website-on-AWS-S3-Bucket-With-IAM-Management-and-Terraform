provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_static_website" {
  bucket = "aws-terrafrom-static-website"  # Ensure this is globally unique
}

# Add this resource to manage the public access block settings for the bucket
resource "aws_s3_bucket_public_access_block" "my_bucket_public_access_block" {
  bucket = aws_s3_bucket.my_static_website.id

  block_public_policy     = false // This is default, so you can probably remove this line
  restrict_public_buckets = false // same as above
  block_public_acls       = true 
  ignore_public_acls      = true 
}

resource "aws_s3_bucket_policy" "my_bucket_policy" {
  bucket = aws_s3_bucket.my_static_website.bucket
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = ["s3:GetObject"],
        Effect = "Allow",
        Principal = "*",
        Resource = ["arn:aws:s3:::${aws_s3_bucket.my_static_website.bucket}/*"]
      }
    ]
  })
}

resource "aws_s3_bucket_website_configuration" "my_website_config" {
  bucket = aws_s3_bucket.my_static_website.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  routing_rules = jsonencode([
    {
      Condition = {
        KeyPrefixEquals = "docs/"
      },
      Redirect = {
        ReplaceKeyPrefixWith = "documents/"
      }
    }
  ])
}
