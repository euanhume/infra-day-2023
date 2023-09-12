# infra-day-2023


## Terraform

```
terraform init
terraform validate
terraform plan
terraform apply
```

## OpenShift GitOps Bootstrap 

```
oc apply -k bootstrap/base/
oc apply -k cluster-config/projects/base/
oc apply -k cluster-config/applications/base
```
