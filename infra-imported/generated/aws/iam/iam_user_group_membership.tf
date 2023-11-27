resource "aws_iam_user_group_membership" "tfer--yassirsatti-002F-developers" {
  groups = ["developers"]
  user   = "yassirsatti"
}

resource "aws_iam_user_group_membership" "tfer--yassirsatti-002F-developers2" {
  groups = ["developers2"]
  user   = "yassirsatti"
}

resource "aws_iam_user_group_membership" "tfer--yassirsatti-002F-developers3" {
  groups = ["developers3"]
  user   = "yassirsatti"
}
