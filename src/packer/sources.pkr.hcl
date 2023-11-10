source "googlecompute" "rust" {
  // required
  project_id          = var.project_id
  source_image_family = var.source_image_family
  zone                = var.zone

  // metadata
  account_file = var.account_file

  // image settings 
  image_name        = local.vm_name
  image_description = "rust base ami"
  image_labels = {
    "test" = true,
    "base" = "ubuntu",
    "env"  = "dev",
  }

  // machine settings
  machine_type       = "e2-standard-2"
  disk_size          = 20
  disk_type          = "pd-standard"
  enable_secure_boot = true
  use_os_login       = true
  ssh_username       = "packer"

}