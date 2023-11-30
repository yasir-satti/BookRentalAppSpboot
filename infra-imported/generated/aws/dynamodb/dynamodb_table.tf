resource "aws_dynamodb_table" "tfer--terraform-state-locking" {
  attribute {
    name = "LockID"
    type = "S"
  }

  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  name         = "terraform-state-locking"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity  = "0"
  stream_enabled = "false"
  write_capacity = "0"
}
