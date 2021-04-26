#!/usr/bin/env bash

rm -rf .terraform terraform.tfstate* main.tf
# step1
echo "step1:"
cp main.tf-step1 main.tf
terraform init
terraform apply -auto-approve
# step2
echo "step2:"
cp main.tf-step2 main.tf
terraform apply -auto-approve