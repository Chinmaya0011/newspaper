provider "aws" {
  region     = "us-east-1"
  # BAD PRACTICE: Hardcoding credentials. 
  # Use environment variables or IAM roles instead.
  access_key = "AKIAEXAMPLE123456789"
  secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
}

resource "aws_security_group" "bad_sg" {
  name        = "open_to_the_world"
  description = "Allows all traffic"

  # BAD PRACTICE: Opening all ports (0) to the entire internet (0.0.0.0/0)
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "insecure_db" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t3.micro"
  db_name              = "mydb"
  
  # BAD PRACTICE: Publicly accessible database
  publicly_accessible  = true
  
  # BAD PRACTICE: Using a weak, hardcoded password
  username             = "admin"
  password             = "password123"

  # BAD PRACTICE: Encryption disabled
  storage_encrypted    = false
  
  skip_final_snapshot  = true
}

resource "aws_s3_bucket" "leaky_bucket" {
  bucket = "my-very-secret-data-bucket"
}

# BAD PRACTICE: Explicitly disabling public access blocks
resource "aws_s3_bucket_public_access_block" "bad_idea" {
  bucket = aws_s3_bucket.leaky_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
