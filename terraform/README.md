# Portfolio Infrastructure — Terraform

Manages the Azure infrastructure for my personal portfolio site.
Designed to be spun up and torn down on demand.

## What This Provisions

| Resource | Purpose |
|---|---|
| Resource Group | Container for all resources |
| Static Web App | Hosts the portfolio site |

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) >= 1.3.0
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) installed
- An active Azure subscription

## Authentication

Login to Azure before running any Terraform commands:

```bash
az login
```

## Usage

**Initialise (first time only):**
```bash
terraform init
```

**Preview what will be created:**
```bash
terraform plan
```

**Provision infrastructure:**
```bash
terraform apply
```

**Get the deployment token for GitHub Actions:**
```bash
terraform output -raw deployment_token
```

**Tear everything down:**
```bash
terraform destroy
```

## After Applying

1. Copy the deployment token from the output above
2. Go to your GitHub repo → Settings → Secrets → Actions
3. Update your `AZURE_STATIC_WEB_APPS_API_TOKEN` secret
   with the new token
4. Push any change to trigger a fresh deployment

## Outputs

| Output | Description |
|---|---|
| `resource_group_name` | Name of the provisioned resource group |
| `static_web_app_name` | Name of the Static Web App |
| `static_web_app_url` | Live URL of the portfolio |
| `deployment_token` | Sensitive — use for GitHub Actions secret |

## Notes

- State is stored locally — never commit `terraform.tfstate` to Git
- The Static Web App URL changes on each `destroy` + `apply` cycle
- Tags are applied to all resources for easy identification