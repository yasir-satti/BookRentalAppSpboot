resource "aws_default_network_acl" "tfer--acl-0834415196227686c" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-015a2e033d0c2f3eb_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-038f9520228d8faa4_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b49672f2977ea149_id}"]
}

resource "aws_default_network_acl" "tfer--acl-0d34c97b0a9e185df" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-032afff2939ec3105_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-038c2722a65c737a5_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-06de2972002333853_id}"]
}
