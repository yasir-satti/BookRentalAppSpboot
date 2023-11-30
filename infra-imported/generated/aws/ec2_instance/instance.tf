resource "aws_instance" "tfer--i-031feb674a2e71285_env-Backendbookrentalapp" {
  ami                         = "ami-0a600157cc87a6c24"
  associate_public_ip_address = "true"
  availability_zone           = "eu-west-2c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "aws-elasticbeanstalk-ec2-role"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"

  launch_template {
    id      = "lt-0897d46c93dd3ea29"
    name    = "AWSEBEC2LaunchTemplate_NKXcYsQe9RJx"
    version = "2"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.2.68"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  security_groups   = ["awseb-e-mct3qshahg-stack-AWSEBSecurityGroup-1TQZKUIPBO2JN"]
  source_dest_check = "true"
  subnet_id         = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b49672f2977ea149_id}"

  tags = {
    Name                                = "env-Backendbookrentalapp"
    "elasticbeanstalk:environment-id"   = "e-mct3qshahg"
    "elasticbeanstalk:environment-name" = "env-Backendbookrentalapp"
  }

  tags_all = {
    Name                                = "env-Backendbookrentalapp"
    "elasticbeanstalk:environment-id"   = "e-mct3qshahg"
    "elasticbeanstalk:environment-name" = "env-Backendbookrentalapp"
  }

  tenancy                = "default"
  user_data_base64       = "Q29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSI9PT09PT09PT09PT09PT01MTg5MDY1Mzc3MjIyODk4NDA3PT0iCk1JTUUtVmVyc2lvbjogMS4wCgotLT09PT09PT09PT09PT09PTUxODkwNjUzNzcyMjI4OTg0MDc9PQpDb250ZW50LVR5cGU6IHRleHQvY2xvdWQtY29uZmlnOyBjaGFyc2V0PSJ1cy1hc2NpaSIKTUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogN2JpdApDb250ZW50LURpc3Bvc2l0aW9uOiBhdHRhY2htZW50OyBmaWxlbmFtZT0iY2xvdWQtY29uZmlnLnR4dCIKCiNjbG91ZC1jb25maWcKcmVwb191cGdyYWRlOiBub25lCnJlcG9fcmVsZWFzZXZlcjogMi4wCmNsb3VkX2ZpbmFsX21vZHVsZXM6CiAtIFtzY3JpcHRzLXVzZXIsIGFsd2F5c10KCi0tPT09PT09PT09PT09PT09NTE4OTA2NTM3NzIyMjg5ODQwNz09CkNvbnRlbnQtVHlwZTogdGV4dC94LXNoZWxsc2NyaXB0OyBjaGFyc2V0PSJ1cy1hc2NpaSIKTUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogN2JpdApDb250ZW50LURpc3Bvc2l0aW9uOiBhdHRhY2htZW50OyBmaWxlbmFtZT0idXNlci1kYXRhLnR4dCIKCiMhL2Jpbi9iYXNoCmV4ZWMgPiA+KHRlZSAtYSAvdmFyL2xvZy9lYi1jZm4taW5pdC5sb2d8bG9nZ2VyIC10IFtlYi1jZm4taW5pdF0gLXMgMj4vZGV2L2NvbnNvbGUpIDI+JjEKZWNobyBbYGRhdGUgLXUgKyIlWS0lbS0lZFQlSDolTTolU1oiYF0gU3RhcnRlZCBFQiBVc2VyIERhdGEKc2V0IC14CgoKZnVuY3Rpb24gc2xlZXBfZGVsYXkgCnsKICBpZiAoKCAkU0xFRVBfVElNRSA8ICRTTEVFUF9USU1FX01BWCApKTsgdGhlbiAKICAgIGVjaG8gU2xlZXBpbmcgJFNMRUVQX1RJTUUKICAgIHNsZWVwICRTTEVFUF9USU1FICAKICAgIFNMRUVQX1RJTUU9JCgoJFNMRUVQX1RJTUUgKiAyKSkgCiAgZWxzZSAKICAgIGVjaG8gU2xlZXBpbmcgJFNMRUVQX1RJTUVfTUFYICAKICAgIHNsZWVwICRTTEVFUF9USU1FX01BWCAgCiAgZmkKfQoKIyBFeGVjdXRpbmcgYm9vdHN0cmFwIHNjcmlwdApTTEVFUF9USU1FPTIKU0xFRVBfVElNRV9NQVg9MzYwMAp3aGlsZSB0cnVlOyBkbyAKICBjdXJsIGh0dHBzOi8vZWxhc3RpY2JlYW5zdGFsay1wbGF0Zm9ybS1hc3NldHMtZXUtd2VzdC0yLnMzLmV1LXdlc3QtMi5hbWF6b25hd3MuY29tL3N0YWxrcy9lYl9jb3JyZXR0bzE3X2FtYXpvbl9saW51eF8yXzEuMC4zNzcxLjBfMjAyMjEwMjkwNTEwNTQvbGliL1VzZXJEYXRhU2NyaXB0LnNoID4gL3RtcC9lYmJvb3RzdHJhcC5zaCAKICBSRVNVTFQ9JD8KICBpZiBbWyAiJFJFU1VMVCIgLW5lIDAgXV07IHRoZW4gCiAgICBzbGVlcF9kZWxheSAKICBlbHNlCiAgICAvYmluL2Jhc2ggL3RtcC9lYmJvb3RzdHJhcC5zaCAgICAgJ2h0dHBzOi8vY2xvdWRmb3JtYXRpb24td2FpdGNvbmRpdGlvbi1ldS13ZXN0LTIuczMuZXUtd2VzdC0yLmFtYXpvbmF3cy5jb20vYXJuJTNBYXdzJTNBY2xvdWRmb3JtYXRpb24lM0FldS13ZXN0LTIlM0EyODE0MDg3MzYzMTQlM0FzdGFjay9hd3NlYi1lLW1jdDNxc2hhaGctc3RhY2svZWNhMzI5OTAtM2NkNS0xMWVkLTkwNGYtMDJjNjM1OWY2MGZlL0FXU0VCSW5zdGFuY2VMYXVuY2hXYWl0SGFuZGxlP1gtQW16LUFsZ29yaXRobT1BV1M0LUhNQUMtU0hBMjU2JlgtQW16LURhdGU9MjAyMjA5MjVUMTMyODI3WiZYLUFtei1TaWduZWRIZWFkZXJzPWhvc3QmWC1BbXotRXhwaXJlcz04NjM5OSZYLUFtei1DcmVkZW50aWFsPUFLSUFaWVdVNEpCM1kySDJPREJJJTJGMjAyMjA5MjUlMkZldS13ZXN0LTIlMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1TaWduYXR1cmU9ZmVlYjhiNTQ5MzFjOWU3YTIzNmRlYTkzMjdjOTQxYmRlOWE4YTRiOTQ5YzE4NDE3N2VmODQzN2FjMTQzMjYwZScgICAgJ2Fybjphd3M6Y2xvdWRmb3JtYXRpb246ZXUtd2VzdC0yOjI4MTQwODczNjMxNDpzdGFjay9hd3NlYi1lLW1jdDNxc2hhaGctc3RhY2svZWNhMzI5OTAtM2NkNS0xMWVkLTkwNGYtMDJjNjM1OWY2MGZlJyAgICAnM2EzYWM3MzMtOGRhYy00NTg3LWE4Y2ItYWM2NDdmNmJjNTEwJyAgICAnaHR0cHM6Ly9lbGFzdGljYmVhbnN0YWxrLWhlYWx0aC5ldS13ZXN0LTIuYW1hem9uYXdzLmNvbScgICAgJycgICAgJ2h0dHBzOi8vZWxhc3RpY2JlYW5zdGFsay1wbGF0Zm9ybS1hc3NldHMtZXUtd2VzdC0yLnMzLmV1LXdlc3QtMi5hbWF6b25hd3MuY29tL3N0YWxrcy9lYl9jb3JyZXR0bzE3X2FtYXpvbl9saW51eF8yXzEuMC4zNzcxLjBfMjAyMjEwMjkwNTEwNTQnICAgICdldS13ZXN0LTInCiAgICBSRVNVTFQ9JD8KICAgIGlmIFtbICIkUkVTVUxUIiAtbmUgMCBdXTsgdGhlbiAKICAgICAgc2xlZXBfZGVsYXkgCiAgICBlbHNlIAogICAgICBleGl0IDAgIAogICAgZmkgCiAgZmkgCmRvbmUKCi0tPT09PT09PT09PT09PT09NTE4OTA2NTM3NzIyMjg5ODQwNz09LS0g"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--awseb-e-mct3qshahg-stack-AWSEBSecurityGroup-1TQZKUIPBO2JN_sg-0b2bce3189d09ebce_id}"]
}
