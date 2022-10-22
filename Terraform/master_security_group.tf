resource "aws_security_group" "master_sg" {
  name = var.master_sg_name
  description = "Custom security group for Master Node"
 
  ingress {
    description      = "ssh connection"
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Kubernetes API server"
    from_port        = 6443
    to_port          = 6443
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  } 

    ingress {
    description      = "etcd server client API"
    from_port        = 2379
    to_port          = 2380
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Kubelet API"
    from_port        = 10250
    to_port          = 10250
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "kube-scheduler"
    from_port        = 10259
    to_port          = 10259
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  ingress {
    description      = "kube-controller-manager"
    from_port        = 10257
    to_port          = 10257
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  ingress {
    description      = "Jenkins server"
    from_port        = 80
    to_port          = 80
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "https"
    from_port        = 443
    to_port          = 443
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  egress {
    description      = "Jenkins server Updates"
    from_port        = 8080
    to_port          = 8080
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.master_sg_name
  }
}