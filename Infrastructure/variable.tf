variable "aws_region" {
  default = "us-east-1"
}

variable "key_name" {
  description = "Nom de la clé SSH"
  type        = string
}

variable "public_key_path" {
  description = "Chemin du fichier .pub"
  type        = string
}

variable "kali_ami_id" {
  description = "AMI ID de Kali Linux"
  type        = string
}
