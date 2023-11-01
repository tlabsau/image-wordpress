packer {
  required_version = "= 1.9.4"
  required_plugins {
    amazon = {
      source  = "github.com/hashicorp/amazon"
      version = "= 1.2.7"
    }
    ansible = {
      source  = "github.com/hashicorp/ansible"
      version = "= 1.1.0"
    }
  }
}
