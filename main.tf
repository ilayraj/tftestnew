terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }

  required_version = ">= 0.12"
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello from Terraform in GitHub Actions!"
  }
}
