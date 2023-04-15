terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0db245b76e5c21ca1"
  instance_type = "t2.micro"
  key_name = "win-home"
  # user_data = <<-EOF
  #   #!/bin/bash
  #   cd /home/ubuntu
  #   echo "<h1>Feito com Terraform autt</h1>" > index.html
  #   nohup busybox httpd -f -p 8080 &
  # EOF
  tags = {
    Name = "Teste aws"
  }
}