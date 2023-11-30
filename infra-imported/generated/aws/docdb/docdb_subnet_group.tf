resource "aws_docdb_subnet_group" "tfer--default" {
  description = "default"
  name        = "default"
  subnet_ids  = ["subnet-015a2e033d0c2f3eb", "subnet-038f9520228d8faa4", "subnet-0b49672f2977ea149"]
}

resource "aws_docdb_subnet_group" "tfer--default-vpc-020aa58ff51971cb1" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-020aa58ff51971cb1"
  subnet_ids  = ["subnet-015a2e033d0c2f3eb", "subnet-038f9520228d8faa4", "subnet-0b49672f2977ea149"]
}

resource "aws_docdb_subnet_group" "tfer--default-vpc-03be0debce581a4fc" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-03be0debce581a4fc"
  subnet_ids  = ["subnet-032afff2939ec3105", "subnet-038c2722a65c737a5", "subnet-06de2972002333853"]
}
