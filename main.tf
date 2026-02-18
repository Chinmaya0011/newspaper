provider "aws" {
  region = "us-east-1"
}

# Hardcoded credentials (CRITICAL vulnerability)
variable "aws_access_key" {
  default = "AKIA123456789EXAMPLE"
}

variable "aws_secret_key" {
  default = "secretkey1234567890"
}

# Publicly exposed S3 bucket
resource "aws_s3_bucket" "public_bucket" {
  bucket = "my-insecure-bucket-example"
  acl    = "public-read"
}

# Bucket policy allowing full public access
resource "aws_s3_bucket_policy" "public_policy" {
  bucket = aws_s3_bucket.public_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = "*",
        Action = "s3:*",
        Resource = [
          aws_s3_bucket.public_bucket.arn,
          "${aws_s3_bucket.public_bucket.arn}/*"
        ]
      }
    ]
  })
}

# Security group allowing all inbound traffic
resource "aws_security_group" "open_sg" {
  name        = "open-security-group"
  description = "Allow all traffic"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]   # Open to the world
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 instance without encryption or IAM role
resource "aws_instance" "insecure_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # Example AMI
  instance_type = "t2.micro"
  security_groups = [aws_security_group.open_sg.name]

  tags = {
    Name = "insecure-instance"
  }
}
