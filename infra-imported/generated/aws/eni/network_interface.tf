resource "aws_network_interface" "tfer--eni-040ca2e42cf6fbf11" {
  description        = "RDSNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.30.2.199"
  private_ip_list    = ["172.30.2.199"]
  private_ips        = ["172.30.2.199"]
  private_ips_count  = "0"
  security_groups    = ["sg-087df58013ef1105f"]
  source_dest_check  = "true"
  subnet_id          = "subnet-06de2972002333853"
}

resource "aws_network_interface" "tfer--eni-0621a5c6f8140a11e" {
  description        = "ELB app/awseb-AWSEB-3T6OL9ZNCH4P/8526f88d832b372a"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.8.140"
  private_ip_list    = ["172.31.8.140"]
  private_ips        = ["172.31.8.140"]
  private_ips_count  = "0"
  security_groups    = ["sg-0237ddfe952b5644a"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0b49672f2977ea149"
}

resource "aws_network_interface" "tfer--eni-07b6a342310f125e3" {
  attachment {
    device_index = "0"
    instance     = "i-031feb674a2e71285"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.2.68"
  private_ip_list    = ["172.31.2.68"]
  private_ips        = ["172.31.2.68"]
  private_ips_count  = "0"
  security_groups    = ["sg-0b2bce3189d09ebce"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0b49672f2977ea149"
}

resource "aws_network_interface" "tfer--eni-0a7ee79bd8392f507" {
  description        = "ELB app/awseb-AWSEB-3T6OL9ZNCH4P/8526f88d832b372a"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.41.209"
  private_ip_list    = ["172.31.41.209"]
  private_ips        = ["172.31.41.209"]
  private_ips_count  = "0"
  security_groups    = ["sg-0237ddfe952b5644a"]
  source_dest_check  = "true"
  subnet_id          = "subnet-038f9520228d8faa4"
}
