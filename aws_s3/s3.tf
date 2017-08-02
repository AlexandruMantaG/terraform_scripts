resource "aws_s3_bucket" "b" {
    bucket = "mybucket-al02mc08"
    acl = "private"

    tags {
        Name = "mybucket-al02mc08"
    }
}
