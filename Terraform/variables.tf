# ssh-Key 
variable key_path {} # e.g. ~/.ssh/ 
variable key_name {} # e.g. pvt_key.pem

# AWS Credentials
variable secret_key {}
variable access_key {}


# Region & ami
variable region {
  type        = string
  default     = "us-east-1"
}

variable az {
  type        = string
  default     = "us-east-1a"
}

variable ami {
  type        = string
  default     = "ami-0149b2da6ceec4bb0" # Ubuntu V20.04
}

# Instance variables
variable master_instance_type {
  type        = string
  default     = "t2.medium"
}

variable agents_instance_type {
  type        = string
  default     = "t3.medium"
}

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
  default     = 12
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