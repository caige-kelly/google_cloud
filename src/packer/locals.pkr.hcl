locals {
  datestamp = formatdate("YYYYMMDD", timestamp())
  vm_name = "${var.vm_name_prefix}-${local.datestamp}"
}