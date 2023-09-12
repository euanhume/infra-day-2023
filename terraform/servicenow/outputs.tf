output "rhacs_base_uri" {
  value = servicenow_scripted_rest_api.rhacs.base_uri
  description = "The base URI for the RHACS ServiceNow Scripted REST API."
}