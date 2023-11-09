source "googlecompute" "rust" {
    project_id = var.project_id
    account_file = var.account_file
    source_image_family = var.source_image_family
    zone = var.zone

    image_name = "rusty-boy-${local.datestamp}"
    image_description = "rust base ami"
    image_labels = {
        "test" = true,
        "base" = "ubuntu",
        "env" = "dev",
    }

    machine_type = "e2-standard-2"

    use_os_login = true
    ssh_username = "packer"

}