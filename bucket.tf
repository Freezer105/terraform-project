provider "aws" {
  region = "us-west-2" # Change to your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "tf-demo-bucks" # Replace with a unique bucket name of your choice

  tags = {
    Name = "My Example Bucket"
  }
}

# Output the S3 bucket name
output "s3_bucket_name" {
  value = aws_s3_bucket.my_bucket.arn # This will output the bucket arn
}