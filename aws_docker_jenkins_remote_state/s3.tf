resource "aws_s3_bucket" "terraform-state" {
    bucket = "terraform-state-c2d2f78"
    acl = "private"

    tags {
        Name = "Terraform state on S3 ...! "
    }
}
