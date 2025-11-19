# KEY PAIR
resource "aws_key_pair" "my_key" {
  key_name   = "terra-key-ec2"
  public_key = file("terra-key-ec2.pub")
}

# DEFAULT VPC
resource "aws_default_vpc" "default" {}

# SECURITY GROUP
resource "aws_security_group" "my_security_group" {
  name        = "automate-sg"
  description = "this will add a security group"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH open"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTP open"
  }

  ingress {
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "my flask app"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "all outbound open"
  }

  tags = {
    Name = "automate-sg"
  }
}

# EC2 INSTANCE
resource "aws_instance" "my_instance" {
  ami             = "ami-02b8269d5e85954ef"
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.my_security_group.name]

  root_block_device {
    volume_size = 15
    volume_type = "gp3"
  }

  tags = {
    Name = "raj-creations"
  }
}
