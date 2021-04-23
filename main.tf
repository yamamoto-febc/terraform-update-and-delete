terraform {
  required_providers {
    sakuracloud = {
      source  = "sacloud/sakuracloud"
      version = "~> 2"
    }
  }
}

provider "sakuracloud" {
  fake_mode       = true
  fake_store_path = "sakuracloud_fake_store.json"
}

/* Step1 */
resource "sakuracloud_server" "foobar" {
  name           = "example"
  force_shutdown = true

  private_host_id = sakuracloud_private_host.foobar.id
}

resource "sakuracloud_private_host" "foobar" {
  name = "example"
}

# ---------------------------------------------------------

/* Step2 */
# resource "sakuracloud_server" "foobar" {
#   name           = "example"
#   force_shutdown = true
# }

