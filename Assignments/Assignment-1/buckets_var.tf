variable "s3_bucket_names" {
  description = "Provide the list of buckets to be created"
  type = list(string)
  default = ["phoenix-proj-55-saiadhinatha","phoenix-proj-56-saiadhinatha","phoenix-proj-57-saiadhinatha"]
}