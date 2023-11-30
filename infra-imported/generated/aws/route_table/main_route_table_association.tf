resource "aws_main_route_table_association" "tfer--vpc-020aa58ff51971cb1" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-00b7a20cdb1f1738a_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-020aa58ff51971cb1_id}"
}

resource "aws_main_route_table_association" "tfer--vpc-03be0debce581a4fc" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0f16332022b3a106d_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-03be0debce581a4fc_id}"
}
