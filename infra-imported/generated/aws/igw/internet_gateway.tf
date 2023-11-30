resource "aws_internet_gateway" "tfer--igw-02ea9f1070839b16c" {
  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-020aa58ff51971cb1_id}"
}

resource "aws_internet_gateway" "tfer--igw-0ce440f10e6856ec1" {
  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-03be0debce581a4fc_id}"
}
