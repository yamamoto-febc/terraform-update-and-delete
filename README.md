# terraform-update-and-delete

This repository is an example of how to reproduce the problem with terraform v0.15 and terraform-provider-sakuracloud where the destroy does not complete.

## Steps to Reproduce

```bash
git clone https://github.com/yamamoto-febc/terraform-update-and-delete.git; cd terraform-update-and-delete
./run.sh
```

## References

- SAKURA cloud provider: https://github.com/sacloud/terraform-provider-sakuracloud