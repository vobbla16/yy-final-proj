resource "yandex_vpc_network" "proj-net" {
  name = "proj-net"
}

resource "yandex_vpc_subnet" "proj-subnet-a" {
  v4_cidr_blocks = ["10.7.0.0/16"]
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.proj-net.id
}
