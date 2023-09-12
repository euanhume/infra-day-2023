terraform {
  required_providers {
    servicenow = {
      source = "tylerhatton/servicenow"
      version = "0.9.5"
    }
  }
}

provider "servicenow" {
  instance_url = var.servicenow_instance_url
  username     = var.servicenow_username
  password     = var.servicenow_password
}

resource "servicenow_scripted_rest_api" "rhacs" {
  name        = "rhacs"
  active      = true
}

resource "servicenow_scripted_rest_resource" "alert" {
  http_method = "POST"
  name = "alert"
  web_service_definition = servicenow_scripted_rest_api.rhacs.id
  operation_script = file("${path.module}/scripts/rhacs_alert.js")
}