resource "aws_route_table" "tfer--rtb-00b7a20cdb1f1738a" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-02ea9f1070839b16c"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-020aa58ff51971cb1_id}"
}

resource "aws_route_table" "tfer--rtb-0f16332022b3a106d" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0ce440f10e6856ec1"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-03be0debce581a4fc_id}"
}
