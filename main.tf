provider "aws" {
  region = var.region
}

resource "null_resource" "update_existing_instance" {
  provisioner "remote-exec" {
    inline = [
      "#!/bin/bash",
      "sudo yum update -y",
      "sleep 5",
      "echo 'Hi, this is a file test' > test.txt"
    ]

    connection {
      type        = "ssh"
      user        = var.user_instance
      private_key = file(var.access_key_path)
      host        = var.instance_public_ip
      timeout     = "5m"
    }
  }
}