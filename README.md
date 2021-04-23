# terraform-update-and-delete

This repository is intended to reproduce the problem of errors in apply after [https://github.com/hashicorp/terraform/pull/28165](https://github.com/hashicorp/terraform/pull/28165) has been merged

## Steps to Reproduce

```bash
git clone https://github.com/yamamoto-febc/terraform-update-and-delete.git; cd terraform-update-and-delete
terraform init
terraform apply
```

Next, modify main.tf as follows.

```hcl
resource "sakuracloud_server" "foobar" {
  name           = "example"
  force_shutdown = true

  # private_host_id = sakuracloud_private_host.foobar.id
}

# resource "sakuracloud_private_host" "foobar" {
#   name = "example"
# }
```

Then run `terraform apply` again to reproduce it.

---

Note: In this example, the request to the cloud provider (SAKURA Cloud) is made using a development mock, so an account for the cloud provider is not required.