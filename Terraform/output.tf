output "ssh_master" {
  description = "Master ssh command"
  value       = "ssh -i ${var.key_path}/${var.key_name}.pem ubuntu@${aws_instance.master.public_ip}"
}

output "master_public_ip" {
  description = "Jenkins Master - public IP addresses"
  value       = aws_instance.master.public_ip
}

output "agents_public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = aws_instance.agents[*].public_ip
} 

output "ssh_agents" {
  description = "Agents ssh command"
  value       =  flatten([ for i in aws_instance.agents[*].public_ip : "ssh -i ${var.key_path}/${var.key_name}.pem ubuntu@${i}"])
}

output "Ansible_command" {
  value       =  "cd ../Ansible && HOST_KEY_CHECKING=False ansible-playbook -i ../Ansible/hosts ../Ansible/playbook.yml"
}