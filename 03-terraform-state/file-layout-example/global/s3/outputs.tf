output "s3_bucket_arn" {
  value = aws_s3_bucket.terraform_state.arn
  description = "arn of the s3 bucket"
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform_locks.arn
  description = "arn of the dynamodb"
}