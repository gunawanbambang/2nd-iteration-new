variable "db_username" {
  description = "The username for the database"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}



/*
export TF_VAR_db_username="bgunawan"
export TF_VAR_db_password="Jakarta1"
*/