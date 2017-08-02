#!/bin/sh
terraform remote config -backend=s3 -backend-config="bucket=terraform-state-c2d2f78" -backend-config="key=terraform/terraform.tfstate" -backend-config="region=eu-west-1"
