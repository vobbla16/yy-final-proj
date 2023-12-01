resource "yandex_compute_instance" "worker1" {
  name        = "worker1"
  platform_id = "standard-v1"
  hostname = "worker1"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8un8f40qgmlenpa0qb" # ubuntu 22.04
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.proj-subnet-a.id
    ip_address = "10.7.2.10"
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.ssh_pub_key_file)}"
  }
}


resource "yandex_compute_instance" "worker2" {
  name        = "worker2"
  platform_id = "standard-v1"
  hostname = "worker2"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8un8f40qgmlenpa0qb" # ubuntu 22.04
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.proj-subnet-a.id
    ip_address = "10.7.2.11"
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.ssh_pub_key_file)}"
  }
}

resource "yandex_compute_instance" "manager" {
  name        = "manager"
  platform_id = "standard-v1"
  hostname = "manager"

  resources {
    cores  = 6
    memory = 12
  }

  boot_disk {
    initialize_params {
      image_id = "fd8un8f40qgmlenpa0qb" # ubuntu 22.04
      size = 16
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.proj-subnet-a.id
    ip_address = "10.7.1.10"
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.ssh_pub_key_file)}"
  }
}
