resource "local_file" "AnsibleInventory" {
 content = templatefile("./template_files/inventory.tmpl",
    {
        master = aws_instance.master.public_ip,
        agents = flatten([ for i in aws_instance.agents[*].public_ip : i]),
        ansible_user = var.ansible_user
    })
    filename = "../Ansible/hosts"
    depends_on = [ 
        aws_volume_attachment.ebsAttach
    ]
}

resource "local_file" "ansible_config" {
 content = templatefile("./template_files/ansible_config.tmpl",
    {
        key_path = var.key_path 
        key_name = var.key_name
        ansible_user = var.ansible_user
    })
    filename = "../Ansible/ansible.cfg"
    depends_on = [ 
            local_file.AnsibleInventory
        ]
}

resource "local_file" "volume-yml" {
 content = templatefile("./template_files/volume.tmpl",
    {
        agents = flatten([ for i in aws_instance.agents[*].public_ip : i]),
        ansible_user = var.ansible_user
        volume = var.ebs_volume
    })
    filename = "../K8s/Jenkins-server/volume.yml"
    depends_on = [ 
            local_file.AnsibleInventory
        ]
}