resource "aws_ebs_encryption_by_default" "encrypt_eu_west_1" {
  enabled = true
}

resource "aws_ebs_encryption_by_default" "encrypt_us_east_1" {
  enabled = true
  provider = aws.us_east_1
}