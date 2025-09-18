resource "tls_private_key" "sshkey" {
  algorithm = "ED25519"
}

resource "local_file" "private_key" {
  filename = "${path.module}/id_ed25519"
  content  = tls_private_key.sshkey.private_key_pem
  file_permission = "0600"
}

resource "local_file" "public_key" {
  filename = "${path.module}/id_ed25519.pub"
  content  = tls_private_key.sshkey.public_key_openssh
  file_permission = "0644"
}