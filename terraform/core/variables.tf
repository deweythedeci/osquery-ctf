variable "project_id" {
  type        = string
  description = "The GCP project ID to deploy Thunder CTF into"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "ssh_username" {
  description = "Username for SSH login"
  type        = string
  default     = "student"
}