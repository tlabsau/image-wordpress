locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}

source "amazon-ebs" "wordpress" {
  profile       = "${var.aws_profile}"
  region        = "${var.region}"
  instance_type = "${var.instance_type}"
  ami_name      = "${var.company}-${var.ami_name}-${local.timestamp}"
  source_ami_filter {
    filters = {
      name = "al2023-ami-*-kernel-*-arm64"
      virtualization-type: "hvm",
      root-device-type: "ebs"
    }
    most_recent = true
    owners      = ["amazon"]
  }
  ssh_username = "ec2-user"
  ebs_optimized = true

}

build {
  sources = ["source.amazon-ebs.wordpress"]
  provisioner "shell" {
    script = "initialization.sh"
  }
}
