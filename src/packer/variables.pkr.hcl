variable "project_id" {
    type = string
    description = "project to use"
    sensitive = false
}

variable "source_image_family" {
    default = "ubuntu-2204-lts"
    type = string
    description = "base image to use"
    sensitive = false
}

variable "zone" {
    default = "us-east5-a"
    type = string
    description = "default google cloud zone" 
}

variable "account_file" {
    default = "./account.json"
    type = string
    description = "Account info to auth"
}