variable "ssh_pub_key_file" {
	type = string
	default = "../ssh-keys/id_rsa.pub"
}

variable "dynamic_inventory_location" {
	type = string
	default = "../ansible/dyn_inventory.tmp"
}
