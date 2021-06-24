variable "machine-ami" {
  description = "What is your AMI id?"
  default     = "ami-0aeeebd8d2ab47354"
}

variable "machine-type" {
  description = "What is your instance type?"
  default     = "t2.micro"
}

variable "machine-key" {
  description = "What is your machine key?"
  default     = "Devops_kp"
}

variable "key" {
  description = "What is your statefile bucket key?"
  default     = "devops/training/statefile"
}

variable "machine-name" {
  description = "What is the name of your machine?"
  default     = "devops-server"
}

variable "bucket" {
  description = "What is the name of your machine?"
  default     = "statefile-bucket-744"
}

variable "machine-az" {
  description = "What is the name of your machine?"
  default     = "us-east-1a"
}

variable "environment" {
  description = "What is the name of your machine?"
  default     = "dev"
}

variable "role" {
  description = "What is the name of your machine?"
  default     = "tool"
}



















