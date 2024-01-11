variable ami_id {
  type        = string
  default     = "ami-0005e0cfe09cc9050"
  description = "Ami id of CICD server"
}

variable instance_type {
  type        = string
  default     = "t2.micro"
  description = "type of ec2 instance to be launched"
}
variable region {
  type        = string
  default     = "us-east-1"
  description = "Ec2 instance region"
}
variable ssh_key_name {
  type        = string
  default     = "devops_infra"
  description = "ssh key pair to login to instance"
}
variable bucket_name {
  type        = string
  default     = "devops-infra-backup"
  description = "s3 bucket for terraform backend"
}

