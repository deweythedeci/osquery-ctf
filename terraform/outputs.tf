output "lab0_intro_ip" {
  description = "Public IP of the lab0_intro module VM"
  value       = module.lab0_intro.instance_ip
}