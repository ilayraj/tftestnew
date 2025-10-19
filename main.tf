# main.tf - Simple Terraform configuration to test GitHub Actions

terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }

  required_version = ">= 0.12"
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo Hello, GitHub Actions!"
  }
}
