variable ami_id {
  type        = string
  default     = "ami-0a5ed7a812aeb495a"
  description = "Ami id of CICD server"
}

variable instance_type {
  type        = string
  default     = "t3.xlarge"
  description = "type of ec2 instance to be launched"
}
variable region {
  type        = string
  default     = "us-west-1"
  description = "Ec2 instance region"
}
variable ssh_key_name {
  type        = string
  default     = "IFF_pre_environment_setup"
  description = "ssh key pair to login to instance"
}
variable bucket_name {
  type        = string
  default     = "devops-infra-backup-terraform"
  description = "s3 bucket for terraform backend"
}

variable profile {
  type        = string
  default     = "dev"
  description = "aws profile to be used for resource provisioning"
}
