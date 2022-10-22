provider "aws" {
  region = var.region
  secret_key = var.secret_key 
  access_key = var.access_key
}

resource "aws_instance" "master" {
    ami                    = var.ami
    instance_type          = var.master_instance_type
    key_name               = var.key_name
    vpc_security_group_ids = [aws_security_group.master_sg.id]

    tags = {
        Name = var.master_tags
    }
    
}
resource "aws_instance" "agents" {
    count                  = var.agents_count
    ami                    = var.ami
    instance_type          = var.agents_instance_type
    key_name               = var.key_name
    availability_zone      = var.az
    vpc_security_group_ids = [aws_security_group.agent_sg.id]
    tags = {
        Name = "${var.agents_tags}-${count.index}"
    }
}

resource "aws_ebs_volume" "worker_ebs" {
    count = var.agents_count
    availability_zone = var.az
    size              = var.ebs_volume
    tags = {
    Name = "worker-ebs"
    }
    depends_on = [ 
        aws_instance.agents
    ]
}


resource "aws_volume_attachment" "ebsAttach" {
    count = var.agents_count
    device_name = "/dev/sdd"
    volume_id = element(aws_ebs_volume.worker_ebs.*.id, count.index)
    instance_id = element(aws_instance.agents.*.id, count.index)

    depends_on = [ 
        aws_ebs_volume.worker_ebs,
        aws_instance.agents
    ]
}