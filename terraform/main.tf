terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone                     = "ru-central1-a"
  service_account_key_file = "../local/authorized_key.json"
  cloud_id                 = "b1g0vh6uspd0m39d5er6"
  folder_id                = "b1g7ns0nf44gkb0g3uuf"
}

