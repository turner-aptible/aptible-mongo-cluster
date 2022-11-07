# [![Aptible](./assets/aptible.svg)](https://aptible.com/)

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Docs](https://img.shields.io/badge/docs-current-brightgreen.svg)](https://deploy-docs.aptible.com/docs)
[![Twitter](https://img.shields.io/twitter/follow/aptible.svg?style=social)](https://twitter.com/intent/follow?screen_name=aptible)

## MongoDB Cluster Module

This repo is meant as an example module for creating MongoDB clusters. You can edit values for the primary and replicas within the cluster to match your needs.

## Prerequisites

To successfully run this MongoDB Cluster module, you need the following:

* An Aptible Account. If you don't have one, [sign up](https://dashboard.aptible.com/signup) for a trial.

* The [Aptible CLI](https://deploy-docs.aptible.com/docs/cli) installed and logged into on the machine you'll be running this module.

* [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) v0.15.0 or higher installed on your computer.

## Run the Terraform Module

### Instructions

1. Clone the repository and then enter the directory

    ```console
    git clone https://github.com/turner-aptible/aptible-mongo-cluster.git
    cd aptible-mongo-cluster
    ```

2. Initialize the Terraform directory

    ```console
    terraform init
    ```

3. Create a `.tfvars` file with all the variables that are needed. Below you can see an example:

    ```hcl
    environment_name       = "aptible-mongo-tf"
    creator                = "alincoln"
    aptible_stack          = "my-stack"
    primary_container_size = 512
    primary_disk_size      = 10
    replica_count          = 2
    replica_container_size = 512
    replica_disk_size      = 10
    ```

4. Run the Terraform module.

  ```console
  terraform apply
  ```

## Variables List


| Name | Description | Type | Required |
| ---- | ----------- | ---- |-------- |
| `create_environment` | Would you life to create a new environment or use existing one?  | `bool` | &#9745; |
| `environment_name` | Name of the environment you'd like to use. | `string` | &#9745; |
| `creator` | Name of the person creating this instance. E.G. 'jsmith, mmyers, alincoln' | `string` | &#9745; |
| `aptible_stack` | Name of the stack you'd like to use when creating an environment. _Required if using create_environment._  | `string` | &#9744; |
| `primary_container_size` | Size of the primary MongoDB instance container. _Refer to [this doc](https://deploy-docs.aptible.com/docs/database-scaling#ram-scaling) for valid sizes._ | `number` | &#9745; |
| `primary_disk_size` | Size of the primary MongoDB disk. _Refer to [this doc](https://deploy-docs.aptible.com/docs/database-scaling#disk-scaling) for valid sizes._  | `number` | &#9745; |
| `replica_count` | Number of replicas you'd wish to create. | `number` | &#9745; |
| `replica_container_size` | Size of the replica MongoDB instance container. _Refer to [this doc](https://deploy-docs.aptible.com/docs/database-scaling#ram-scaling) for valid sizes._ | `number` | &#9745; |
| `replica_disk_size` | Size of the replica MongoDB disk. _Refer to [this doc](https://deploy-docs.aptible.com/docs/database-scaling#disk-scaling) for valid sizes._ | `number` | &#9745; |
