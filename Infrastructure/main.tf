provider "aws" {
  region = var.aws_region
}

resource "aws_key_pair" "kali_key" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}

resource "aws_security_group" "kali_sg" {
  name        = "kali-sg"
  description = "Allow SSH"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "kali" {
  ami                         = var.kali_ami_id
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.kali_key.key_name
  vpc_security_group_ids      = [aws_security_group.kali_sg.id]

  tags = {
    Name = "kali-devsecops"
  }
}
