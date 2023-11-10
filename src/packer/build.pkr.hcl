build {
    name = "rust builder"

    sources = ["source.googlecompute.rust"]

    provisioner "shell" {
        inline = [
            "echo Y | sudo apt-get update",
            "echo Y | sudo apt-get upgrade",
            "curl https://sh.rustup.rs -sSf | sh -s -- -y",
            "echo source $HOME/.cargo/env >> $HOME/.bashrc"
        ]
    }

    post-processors {
        post-processor "compress" {
            output = "output/disk.raw.tar.gz"
        }
        
        post-processor "googlecompute-import" {
            project_id = var.project_id
            bucket = var.bucket_name
            account_file = var.account_file

            image_name = local.vm_name
            image_architecture = var.architecture
        }
    }
}