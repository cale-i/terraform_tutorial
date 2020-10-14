terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"
    }
  }
}

provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "ubuntu" {
  name         = "ubuntu:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.ubuntu.latest
  name  = "ubuntu-test"
  ports {
    internal = 80
    external = 8000
  }
}
