build {
    name = "rust builder"

    sources = ["source.googlecompute.rust"]

    provisioner "shell" {
        inline = [
            "echo test",
            "sudo apt-get upgrade",
        ]
    }

    post-processor "googlecompute-export" {
        paths = [
            "gs://packer_images_ckelly/ubuntu/rust/file.tar.gz",
            "gs://packer_images_ckelly/ubuntu/test/"
        ]
        disk_size = 100
        machine_type = "e2-standard-2"
    }
}