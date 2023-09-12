variable "servicenow_instance_url" {
  description = "The ServiceNow instance URL"
  type        = string
}

variable "servicenow_username" {
  description = "Username for ServiceNow authentication"
  type        = string
}

variable "servicenow_password" {
  description = "Password for ServiceNow authentication"
  type        = string
  sensitive   = true
}
