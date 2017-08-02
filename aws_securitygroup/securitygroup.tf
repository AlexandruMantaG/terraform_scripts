data "aws_ip_ranges" "european_ec2" {
  regions = [ "eu-west-2", "eu-central-2" ]
  services = [ "ec2" ]
}

resource "aws_security_group" "from_london" {
 name = "from_london"

  ingress {
    from_port = "443"
    to_port = "443"
    protocol = "tcp"
    cidr_blocks = [ "${data.aws_ip_ranges.european_ec2.cidr_blocks}" ]
  }
  tags {
    CreateDate = "${data.aws_ip_ranges.european_ec2.create_date}"
    SyncToken = "${data.aws_ip_ranges.european_ec2.sync_token}"
  }

}
