resource "null_resource" "ssh_into_instance" {
  # Use a null resource to execute the SSH command
  triggers = {
    always_run = timestamp()
  }

  provisioner "remote-exec" {
    # Use the remote-exec provisioner to SSH into the instance
    inline = [
      "echo 'Connected to instance'",
      "docker ps"
    ]

    connection {
      type        = "ssh"
      user        = "root"
      private_key = file("C:/Users/ParthSinha/.ssh/test-inst/id_rsa")
      host        = "74.220.23.80"
    }
  }
}

