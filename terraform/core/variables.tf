variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "ssh_username" {
  description = "Username for SSH Access"
  type        = string
  default     = "ansible"
}