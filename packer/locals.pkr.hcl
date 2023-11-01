locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
  tags = {
    Name        = "${var.company}-${var.app}"
    Company     = var.company
    Application = var.app
    Repository  = "https://github.com/tlabsau/image-wordpress"
    Environment = "Prod"
    CreatedBy   = "Packer"
    CreatedTime = local.timestamp
    Description = "Golden image for the Wordpress applications"
  }
}
