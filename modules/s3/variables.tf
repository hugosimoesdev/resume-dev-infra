variable "s3_bucket_name" {
  type        = string
  description = "Name of bucket"
}

variable "s3_tags" {
  type        = map(string)
  default     = {}
  description = "Tags of creation"
}