variable private_key {}
variable ubuntu_version {}
variable subnet_id {}
variable vpc_security_group_ids {}
variable identity {}
variable key_name {}
variable num_webs {}

resource "aws_instance" "web" {
  count                  = var.num_webs
  ami = (var.ubuntu_version == "18") ? data.aws_ami.ubuntu_18_04.image_id : data.aws_ami.ubuntu_16_04.image_id
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name

  tags = {
    "Identity"    = var.identity
    "Name"        = "Computer ${count.index + 1}/${var.num_webs}"
    "Environment" = "Training"
    "Jeffs"       = "3"
  }

  connection {
    user        = "ubuntu"
    private_key = var.private_key
    host        = self.public_ip
  }

  provisioner "file" {
    source      = "assets"
    destination = "/tmp/"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y; sleep 10",
      "sudo sh /tmp/assets/setup-web.sh",
      "sudo sh /tmp/assets/setup-sopel.sh",
      #"sleep 60 && sudo reboot &",
    ]
  }
}

output "public_ip" {
  value = aws_instance.web.*.public_ip
}

output "public_dns" {
  value = aws_instance.web.*.public_dns
}

resource "null_resource" "web_cluster" {
  # Changes to any instance of the cluster requires re-provisioning
  triggers = {
    web_cluster_instance_ids = "${join(",", aws_instance.web.*.id)}"
  }

  # Bootstrap script can run on any instance of the cluster
  # So we just choose the first in this case
  connection {
    host = "${element(aws_instance.web.*.public_ip, 0)}"
  }

  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "echo ${join("Nodes of the Cluster : ", aws_instance.web.*.private_ip)}"
  }
}