# ssh-Key 
variable key_path {} 
variable key_name {}

# AWS Credentials
variable secret_key {}
variable access_key {}


# Region & ami
variable region {}
variable az {}
variable ami {}

# Instance variables
variable master_instance_type {}
variable agents_instance_type {}

variable agents_count{
  type        = string
  default     = "1"
}

variable agents_tags {
  type = string
  default = "Worker"
}

variable master_tags {
  type = string
  default = "Master"
}

variable ansible_user {
  type        = string
  default     = "ubuntu"
}

variable ebs_volume {
  type        = number
  default     = 20
}
# Security Group & Network
variable agents_sg_name {
  type        = string
  default     = "agents-sg"
}
variable master_sg_name {
  type        = string
  default     = "master-sg"
}