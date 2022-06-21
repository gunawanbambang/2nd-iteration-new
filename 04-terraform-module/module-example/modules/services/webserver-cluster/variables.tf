variable "server_port" {
  type = number
  description = "the port number of the webserver"
  default = 8080
}

variable "cluster_name" {
  description = "name of the cluster resources"
  type = string
}

/*
variable "db_remote_state_bucket" {
  description = "s3 bucket name of remote DB"
  type = string
}
*/

/*
variable "db_remote_state_key" {
  description = "path of the remote DB in s3 bucket"
  type = string
}
*/

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
}