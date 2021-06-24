terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}


resource "aws_instance" "tool-server-1" {
  ami                    = var.machine-ami
  instance_type          = var.machine-type
  key_name               = "training_kp"
  user_data              = data.template_file.toolserver1_bootstrap.template
  vpc_security_group_ids = [aws_security_group.toolserver1_sg.id]
  availability_zone      = var.machine-az


  tags = {
    Name        = "Tool-Server-1"
    Environment = var.environment
    Role        = "Installations"
  }
}

resource "aws_instance" "tool-server-2" {
  ami                    = var.machine-ami
  instance_type          = var.machine-type
  key_name               = "training_kp"
  user_data              = data.template_file.toolserver2_bootstrap.template
  vpc_security_group_ids = [aws_security_group.toolserver2_sg.id]
  availability_zone      = var.machine-az


  tags = {
    Name        = "Tool-Server-2"
    Environment = var.environment
    Role        = "Infrastructure"
  }
}

resource "aws_instance" "monitoring-server" {
  ami                    = "ami-09e67e426f25ce0d7"
  instance_type          = var.machine-type
  key_name               = "training_kp"
  user_data              = data.template_file.monitoringserver_bootstrap.template
  vpc_security_group_ids = [aws_security_group.monitoringserver_sg.id]
  availability_zone      = "us-east-1c"


  tags = {
    Name        = "Monitoring-Server"
    Environment = var.environment
    Role        = "Monitoring"
  }
}


