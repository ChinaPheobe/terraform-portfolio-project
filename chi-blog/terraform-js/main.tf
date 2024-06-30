provider "aws" {
  region = "us-east-2"
}

# S3 bucket
resource "aws_s3_bucket" "nextjs_bucket" {
  bucket = "nextjs-portfolio-bucket-chi"
}

# Ownership control
resource "aws_s3_bucket_ownership_controls" "nextjs_bucket_ownership_controls" {
  bucket = aws_s3_bucket.nextjs_bucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

# Block Public Access
resource "aws_s3_bucket_public_access_block" "nextjs_bucket_public_access_block" {
  bucket = aws_s3_bucket.nextjs_bucket.id

  block_public_acls   = false
  block_public_policy = false
  ignore_public_acls  = false
  restrict_public_buckets = false
}

# Bucket ACL
resource "aws_s3_bucket_acl" "nextjs_bucket_acl" {
  depends_on = [
    aws_s3_bucket_ownership_controls.nextjs_bucket_ownership_controls,
    aws_s3_bucket_public_access_block.nextjs_bucket_public_access_block
  ]

  bucket = aws_s3_bucket.nextjs_bucket.id
  acl    = "public-read"
}

# Bucket policy
resource "aws_s3_bucket_policy" "nextjs_bucket_policy" {
  bucket = aws_s3_bucket.nextjs_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.nextjs_bucket.arn}/*"
      }
    ]
  })
}