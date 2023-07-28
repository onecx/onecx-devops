# Manage GitHub repositories

This repository automates the provisioning and management of GitHub repositories and teams. It provides Terraform 
modules for defining repositories, teams, and applications, enabling version-controlled, scalable management 
of collaborative projects or products.

# Add new product

* Create new folder in `terraform-scripts -> products` for your product
* Add module below to `terraform-scripts/main.tf`
```
module "your_product_name" {
source = "./products/your_product_folder"
}
```
* Copy wished modules of `./example-product.md` to your new product folder
* Create Merge request for your changes and check if `terraform plan` is successful
* Merge your request `terraform apply` will be executed and your changes will be provisioned


# Start terraform locally

Initialize this repository check for changes and apply:

```
terraform init
terraform plan
terraform apply
```

## Tokens to run terraform

In order to run the terraform scripts you need to set `GITHUB_TOKEN` as env vars locally

To obtain your GitHub token go to:

* Profile &rarr; Developer Settings &rarr; [Personal access tokens (classic)](https://github.com/settings/tokens)
* Use `export GITHUB_TOKEN=your_token`


Organization &rarr; Settings &rarr; Security &rarr; Secrets and variables