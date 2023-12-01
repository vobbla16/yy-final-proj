data "template_file" "inventory" {
	template = "${file("./dyn_inventory.tftpl")}"
	vars = {
		worker1_ip = "${yandex_compute_instance.worker1.network_interface[0].nat_ip_address}"
		worker2_ip = "${yandex_compute_instance.worker2.network_interface[0].nat_ip_address}"
		manager_ip= "${yandex_compute_instance.manager.network_interface[0].nat_ip_address}"
	}
}

resource "local_file" "inventory_file" {
	content = "${data.template_file.inventory.rendered}"
	filename = var.dynamic_inventory_location
}
