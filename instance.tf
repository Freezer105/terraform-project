# Create an IAM instance profile
resource "aws_iam_instance_profile" "example_instance_profile" {
  name = "your-instance-profile-name" 
  role = aws_iam_role.my_role.name
}

# Launch an EC2 instance
resource "aws_instance" "example_instance" {
  ami           = "ami-01cd4de4363ab6ee8"         # Replace with your desired AMI ID
  instance_type = "t2.micro"  # Replace with your desired instance type
  key_name      = "mykeypair"  # Replace with your actual key pair name
  iam_instance_profile = aws_iam_instance_profile.example_instance_profile.name

  tags = {
    Name = "tf-instance" #Replace with your instance name 
  }
}