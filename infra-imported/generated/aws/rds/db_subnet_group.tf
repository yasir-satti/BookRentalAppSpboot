resource "aws_db_subnet_group" "tfer--default" {
  description = "default"
  name        = "default"
  subnet_ids  = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-015a2e033d0c2f3eb_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-038f9520228d8faa4_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b49672f2977ea149_id}"]
}

resource "aws_db_subnet_group" "tfer--default-vpc-020aa58ff51971cb1" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-020aa58ff51971cb1"
  subnet_ids  = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-015a2e033d0c2f3eb_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-038f9520228d8faa4_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b49672f2977ea149_id}"]
}

resource "aws_db_subnet_group" "tfer--default-vpc-03be0debce581a4fc" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-03be0debce581a4fc"
  subnet_ids  = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-032afff2939ec3105_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-038c2722a65c737a5_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-06de2972002333853_id}"]
}
