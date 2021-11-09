# Variables must provide

variable "bucket_name" {
  #The S3 bucket name for the terraform state files
  #**NOTE**: BUCKET names are global in AWS, it is a good practice to include your account number in the name
  #for example 111111111111-tf-state
}

variable "dynamo_name" {
  #The dynamodb table name for the terraform locks
}

variable "tf_role" {
  #The name of the IAM role for accessing the statefiles
}

variable "accounts" {
  #List of the aws account number, from where you enable access to the statefile role
}

######################################################################################
# Variables with defaults, only change them if you need to
variable "region" {
  #The main region to deploy the access rights and the bucket
  default = "eu-central-1"
}

variable "replica_region" {
  #The replication region of the statefile bucket
  default = "eu-west-1"
}

variable "replication_role_name" {
  #The name of the role used to replicate the statefile bucket
  default = "tf-replication"
}
